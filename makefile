PGM  = rhessysecv7.2.0
VERSION = 7.2.0
CC = gcc 
CFLAGS =-Wall -g -std=c99
RHESSYS_BIN = /usr/local/bin
OBJ = objects

OS := $(shell uname)

OBJECTS = \
$(OBJ)/read_netcdf.o \
$(OBJ)/Ksat_z_curve.o \
$(OBJ)/add_growth_headers.o \
$(OBJ)/add_headers.o \
$(OBJ)/alloc.o \
$(OBJ)/allocate_annual_growth.o \
$(OBJ)/allocate_daily_growth.o \
$(OBJ)/assign_base_station.o \
$(OBJ)/assign_base_station_xy.o \
$(OBJ)/assign_neighbours.o \
$(OBJ)/assign_drainIN.o \
$(OBJ)/basin_daily_F.o \
$(OBJ)/basin_daily_I.o \
$(OBJ)/basin_hourly.o \
$(OBJ)/cal_date_lt.o \
$(OBJ)/caldat.o \
$(OBJ)/canopy_stratum_daily_F.o \
$(OBJ)/canopy_stratum_daily_I.o \
$(OBJ)/canopy_stratum_growth.o \
$(OBJ)/canopy_stratum_hourly.o \
$(OBJ)/check_zero_stores.o \
$(OBJ)/compute_Lstar.o \
$(OBJ)/compute_Lstar_canopy.o \
$(OBJ)/compute_N_leached.o \
$(OBJ)/compute_N_absorbed.o \
$(OBJ)/compute_annual_litfall.o \
$(OBJ)/compute_annual_turnover.o \
$(OBJ)/compute_atm_pres.o \
$(OBJ)/compute_capillary_rise.o \
$(OBJ)/compute_cwd_decay.o \
$(OBJ)/compute_deadleaf_turnover.o \
$(OBJ)/compute_delta_water.o \
$(OBJ)/compute_diffuse_radiative_PAR_fluxes.o \
$(OBJ)/compute_diffuse_radiative_fluxes.o \
$(OBJ)/compute_direct_radiative_PAR_fluxes.o \
$(OBJ)/compute_direct_radiative_fluxes.o \
$(OBJ)/compute_farq_psn.o \
$(OBJ)/compute_field_capacity.o \
$(OBJ)/compute_growingseason_index.o \
$(OBJ)/compute_layer_field_capacity.o \
$(OBJ)/compute_froot_litfall.o \
$(OBJ)/compute_growth_resp.o \
$(OBJ)/compute_hourly_rain_stored.o \
$(OBJ)/compute_hourly_litter_rain_stored.o \
$(OBJ)/compute_infiltration.o \
$(OBJ)/compute_leaf_litfall.o \
$(OBJ)/compute_litter_rain_stored.o \
$(OBJ)/compute_lwp_predawn.o \
$(OBJ)/compute_maint_resp.o \
$(OBJ)/compute_mean_hillslope_parameters.o \
$(OBJ)/compute_nonvascular_stratum_conductance.o \
$(OBJ)/compute_potential_N_uptake.o \
$(OBJ)/compute_potential_N_uptake_Dickenson.o \
$(OBJ)/compute_potential_N_uptake_Waring.o \
$(OBJ)/compute_potential_N_uptake_combined.o \
$(OBJ)/compute_potential_decomp.o \
$(OBJ)/compute_potential_exfiltration.o \
$(OBJ)/compute_potential_rain_interception.o \
$(OBJ)/compute_potential_snow_interception.o \
$(OBJ)/compute_prop_alloc_daily.o \
$(OBJ)/compute_ra_overstory.o \
$(OBJ)/compute_ra_surface.o \
$(OBJ)/compute_ra_understory.o \
$(OBJ)/compute_radiative_fluxes.o \
$(OBJ)/compute_rain_stored.o \
$(OBJ)/compute_return_flow.o \
$(OBJ)/compute_saturation_vapor_pressure.o \
$(OBJ)/compute_varbased_returnflow.o \
$(OBJ)/compute_varbased_flow.o \
$(OBJ)/compute_snow_stored.o \
$(OBJ)/compute_snow_sublimation.o \
$(OBJ)/compute_soil_water_potential.o \
$(OBJ)/compute_stability_correction.o \
$(OBJ)/compute_subsurface_routing.o \
$(OBJ)/compute_subsurface_routing_hourly.o \
$(OBJ)/compute_stream_routing.o \
$(OBJ)/compute_surface_heat_flux.o \
$(OBJ)/compute_subsurface_temperature_profile.o \
$(OBJ)/compute_toc_wind.o \
$(OBJ)/compute_transmissivity_curve.o \
$(OBJ)/compute_unsat_zone_drainage.o \
$(OBJ)/compute_vapor_pressure_deficit.o \
$(OBJ)/compute_vapour_conductance.o \
$(OBJ)/compute_vascular_stratum_conductance.o \
$(OBJ)/compute_year_day.o \
$(OBJ)/compute_z_final.o \
$(OBJ)/construct_base_station.o \
$(OBJ)/construct_basin.o \
$(OBJ)/construct_basin_defaults.o \
$(OBJ)/construct_canopy_strata.o \
$(OBJ)/construct_clim_sequence.o \
$(OBJ)/construct_command_line.o \
$(OBJ)/construct_daily_clim.o \
$(OBJ)/construct_dated_clim_sequence.o \
$(OBJ)/construct_dated_input.o \
$(OBJ)/construct_filename_list.o \
$(OBJ)/construct_hillslope.o \
$(OBJ)/construct_hillslope_defaults.o \
$(OBJ)/construct_hourly_clim.o \
$(OBJ)/construct_landuse_defaults.o \
$(OBJ)/construct_monthly_clim.o \
$(OBJ)/construct_output_files.o \
$(OBJ)/construct_output_fileset.o \
$(OBJ)/construct_patch.o \
$(OBJ)/construct_fire_grid.o \
$(OBJ)/construct_routing_topology.o \
$(OBJ)/construct_stream_routing_topology.o \
$(OBJ)/construct_ddn_routing_topology.o \
$(OBJ)/construct_surface_energy_defaults.o \
$(OBJ)/construct_fire_defaults.o \
$(OBJ)/construct_soil_defaults.o \
$(OBJ)/construct_spinup_thresholds.o \
$(OBJ)/construct_spinup_defaults.o \
$(OBJ)/construct_empty_shadow_strata.o \
$(OBJ)/construct_stratum_defaults.o \
$(OBJ)/construct_tec.o \
$(OBJ)/construct_tec_entry.o \
$(OBJ)/construct_world.o \
$(OBJ)/construct_yearly_clim.o \
$(OBJ)/construct_zone.o \
$(OBJ)/construct_zone_defaults.o \
$(OBJ)/construct_topmodel_patchlist.o \
$(OBJ)/destroy_base_station.o \
$(OBJ)/destroy_basin.o \
$(OBJ)/destroy_basin_defaults.o \
$(OBJ)/destroy_canopy_stratum.o \
$(OBJ)/destroy_command_line.o \
$(OBJ)/destroy_hillslope.o \
$(OBJ)/destroy_hillslope_defaults.o \
$(OBJ)/destroy_landuse_defaults.o \
$(OBJ)/destroy_output_files.o \
$(OBJ)/destroy_output_fileset.o \
$(OBJ)/destroy_patch.o \
$(OBJ)/destroy_fire_defaults.o \
$(OBJ)/destroy_surface_energy_defaults.o \
$(OBJ)/destroy_soil_defaults.o \
$(OBJ)/destroy_stratum_defaults.o \
$(OBJ)/destroy_tec.o \
$(OBJ)/destroy_world.o \
$(OBJ)/destroy_zone.o \
$(OBJ)/destroy_zone_defaults.o \
$(OBJ)/execute_daily_growth_output_event.o \
$(OBJ)/execute_daily_output_event.o \
$(OBJ)/execute_hourly_output_event.o \
$(OBJ)/execute_hourly_growth_output_event.o \
$(OBJ)/execute_monthly_output_event.o \
$(OBJ)/execute_redefine_strata_event.o \
$(OBJ)/execute_redefine_world_event.o \
$(OBJ)/execute_redefine_world_mult_event.o \
$(OBJ)/execute_redefine_world_thin_event.o \
$(OBJ)/execute_road_construction_event.o \
$(OBJ)/execute_firespread_event.o \
$(OBJ)/execute_state_output_event.o \
$(OBJ)/execute_tec.o \
$(OBJ)/execute_yearly_growth_output_event.o \
$(OBJ)/execute_yearly_output_event.o \
$(OBJ)/find_basin.o \
$(OBJ)/find_hillslope_in_basin.o \
$(OBJ)/find_patch.o \
$(OBJ)/find_patch_in_zone.o \
$(OBJ)/find_stratum.o \
$(OBJ)/find_stratum_in_patch.o \
$(OBJ)/find_zone_in_hillslope.o \
$(OBJ)/handle_event.o \
$(OBJ)/hillslope_daily_F.o \
$(OBJ)/hillslope_daily_I.o \
$(OBJ)/hillslope_hourly.o \
$(OBJ)/input_new_basin.o \
$(OBJ)/input_new_basin_mult.o \
$(OBJ)/input_new_hillslope.o \
$(OBJ)/input_new_hillslope_mult.o \
$(OBJ)/input_new_patch.o \
$(OBJ)/input_new_patch_mult.o \
$(OBJ)/input_new_strata.o \
$(OBJ)/input_new_strata_mult.o \
$(OBJ)/input_new_strata_thin.o \
$(OBJ)/input_new_zone.o \
$(OBJ)/input_new_zone_mult.o \
$(OBJ)/julday.o \
$(OBJ)/key_compare.o \
$(OBJ)/leaf_conductance_APAR_curve.o \
$(OBJ)/leaf_conductance_CO2_curve.o \
$(OBJ)/leaf_conductance_LWP_curve.o \
$(OBJ)/leaf_conductance_tavg_curve.o \
$(OBJ)/leaf_conductance_tmin_curve.o \
$(OBJ)/leaf_conductance_vpd_curve.o \
$(OBJ)/main.o \
$(OBJ)/output_24hours_basin.o \
$(OBJ)/output_stream_routing.o \
$(OBJ)/output_basin_state.o \
$(OBJ)/output_canopy_strata_state.o \
$(OBJ)/output_canopy_stratum.o \
$(OBJ)/output_growth_basin.o \
$(OBJ)/output_growth_canopy_stratum.o \
$(OBJ)/output_growth_hillslope.o \
$(OBJ)/output_growth_patch.o \
$(OBJ)/output_growth_zone.o \
$(OBJ)/output_hillslope.o \
$(OBJ)/output_hillslope_state.o \
$(OBJ)/output_monthly_basin.o \
$(OBJ)/output_monthly_canopy_stratum.o \
$(OBJ)/output_monthly_hillslope.o \
$(OBJ)/output_monthly_patch.o \
$(OBJ)/output_monthly_zone.o \
$(OBJ)/output_patch.o \
$(OBJ)/output_patch_state.o \
$(OBJ)/output_template_structure.o \
$(OBJ)/output_yearly_basin.o \
$(OBJ)/output_yearly_canopy_stratum.o \
$(OBJ)/output_yearly_growth_basin.o \
$(OBJ)/output_yearly_growth_canopy_stratum.o \
$(OBJ)/output_yearly_growth_hillslope.o \
$(OBJ)/output_yearly_growth_patch.o \
$(OBJ)/output_yearly_growth_zone.o \
$(OBJ)/output_yearly_hillslope.o \
$(OBJ)/output_yearly_patch.o \
$(OBJ)/output_yearly_zone.o \
$(OBJ)/output_zone.o \
$(OBJ)/output_hourly_zone.o \
$(OBJ)/output_hourly_basin.o \
$(OBJ)/output_hourly_growth_basin.o \
$(OBJ)/output_zone_state.o \
$(OBJ)/parse_alloc_flag.o \
$(OBJ)/parse_dyn_flag.o \
$(OBJ)/parse_phenology_type.o \
$(OBJ)/parse_veg_type.o \
$(OBJ)/parse_albedo_flag.o \
$(OBJ)/patch_daily_F.o  \
$(OBJ)/patch_daily_I.o  \
$(OBJ)/patch_hourly.o \
$(OBJ)/penman_monteith.o \
$(OBJ)/read_record.o \
$(OBJ)/readtag_worldfile.o \
$(OBJ)/recompute_gamma.o \
$(OBJ)/resolve_sminn_competition.o \
$(OBJ)/snowpack_daily_F.o \
$(OBJ)/sort_by_elevation.o \
$(OBJ)/sort_patch_layers.o \
$(OBJ)/surface_daily_F.o \
$(OBJ)/surface_hourly.o \
$(OBJ)/top_model.o \
$(OBJ)/update_C_stratum_daily.o \
$(OBJ)/update_N_stratum_daily.o \
$(OBJ)/update_basin_patch_accumulator.o \
$(OBJ)/update_decomp.o \
$(OBJ)/update_denitrif.o \
$(OBJ)/update_dissolved_organic_losses.o \
$(OBJ)/update_drainage_land.o \
$(OBJ)/update_drainage_road.o \
$(OBJ)/update_drainage_stream.o \
$(OBJ)/update_gw_drainage.o \
$(OBJ)/update_hillslope_accumulator.o \
$(OBJ)/update_litter_interception_capacity.o \
$(OBJ)/update_mortality.o \
$(OBJ)/update_branch_mortality.o \
$(OBJ)/update_nitrif.o \
$(OBJ)/update_phenology.o \
$(OBJ)/update_rooting_depth.o \
$(OBJ)/update_septic.o \
$(OBJ)/update_shadow_strata.o \
$(OBJ)/update_soil_moisture.o \
$(OBJ)/valid_option.o \
$(OBJ)/world_daily_F.o \
$(OBJ)/world_daily_I.o \
$(OBJ)/world_hourly.o \
$(OBJ)/yearday.o \
$(OBJ)/zero_patch_daily_flux.o \
$(OBJ)/zero_stratum_annual_flux.o \
$(OBJ)/zero_stratum_daily_flux.o \
$(OBJ)/zone_daily_F.o \
$(OBJ)/zone_daily_I.o \
$(OBJ)/zone_hourly.o \
$(OBJ)/construct_ascii_grid.o \
$(OBJ)/construct_netcdf_grid.o \
$(OBJ)/construct_netcdf_header.o \
$(OBJ)/create_random_distrb.o \
$(OBJ)/skip_basin.o \
$(OBJ)/skip_hillslope.o \
$(OBJ)/skip_zone.o \
$(OBJ)/skip_patch.o \
$(OBJ)/skip_strata.o \
$(OBJ)/params.o \
$(OBJ)/resemble_hourly_date.o \
$(OBJ)/union_date_init.o \
$(OBJ)/union_date_combine.o \
$(OBJ)/get_num_daywhourly.o \
$(OBJ)/date_oper_union.o \
$(OBJ)/reconstruct_hourly_clim.o \

all:	dir rhessys

dir:
	mkdir -p $(OBJ)

ifdef netcdf
ifdef wmfire
rhessys: $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) -I include -lm -lnetcdf -L./lib -lwmfire -v -o $(PGM) 
else
rhessys: $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) -I include -lm -lnetcdf -v -o $(PGM) 
endif
else
ifdef wmfire
rhessys: $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) -I include -lm -L./lib -lwmfire -v -o $(PGM) 
else
rhessys: $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) -I include -lm -L./lib -v -o $(PGM) 
endif
endif

$(OBJ)/alloc.o: util/alloc.c
	$(CC) -c $(CFLAGS) -I include util/alloc.c -o $(OBJ)/alloc.o
$(OBJ)/add_headers.o: output/add_headers.c
	$(CC) -c $(CFLAGS) -I include output/add_headers.c -o $(OBJ)/add_headers.o
$(OBJ)/add_growth_headers.o: output/add_growth_headers.c
	$(CC) -c $(CFLAGS) -I include output/add_growth_headers.c -o $(OBJ)/add_growth_headers.o
$(OBJ)/read_record.o: util/read_record.c
	$(CC) -c $(CFLAGS) -I include util/read_record.c -o $(OBJ)/read_record.o
$(OBJ)/readtag_worldfile.o: util/readtag_worldfile.c
	$(CC) -c $(CFLAGS) -I include util/readtag_worldfile.c -o $(OBJ)/readtag_worldfile.o
$(OBJ)/construct_tec.o: init/construct_tec.c
	$(CC) -c $(CFLAGS) -I include init/construct_tec.c -o $(OBJ)/construct_tec.o
$(OBJ)/handle_event.o: tec/handle_event.c
	$(CC) -c $(CFLAGS) -I include tec/handle_event.c -o $(OBJ)/handle_event.o
$(OBJ)/construct_output_files.o: init/construct_output_files.c
	$(CC) -c $(CFLAGS) -I include init/construct_output_files.c -o $(OBJ)/construct_output_files.o
$(OBJ)/construct_output_fileset.o: init/construct_output_fileset.c
	$(CC) -c $(CFLAGS) -I include init/construct_output_fileset.c -o $(OBJ)/construct_output_fileset.o
$(OBJ)/destroy_output_files.o:	init/destroy_output_files.c
	$(CC) -c $(CFLAGS) -I include init/destroy_output_files.c -o $(OBJ)/destroy_output_files.o
$(OBJ)/destroy_output_fileset.o: init/destroy_output_fileset.c
	$(CC) -c $(CFLAGS) -I include init/destroy_output_fileset.c -o $(OBJ)/destroy_output_fileset.o
$(OBJ)/destroy_tec.o: init/destroy_tec.c
	$(CC) -c $(CFLAGS) -I include init/destroy_tec.c -o $(OBJ)/destroy_tec.o
$(OBJ)/construct_tec_entry.o: init/construct_tec_entry.c
	$(CC) -c $(CFLAGS) -I include init/construct_tec_entry.c -o $(OBJ)/construct_tec_entry.o
$(OBJ)/execute_yearly_output_event.o: tec/execute_yearly_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_yearly_output_event.c -o $(OBJ)/execute_yearly_output_event.o
$(OBJ)/execute_yearly_growth_output_event.o: tec/execute_yearly_growth_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_yearly_growth_output_event.c -o $(OBJ)/execute_yearly_growth_output_event.o
$(OBJ)/execute_monthly_output_event.o: tec/execute_monthly_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_monthly_output_event.c -o $(OBJ)/execute_monthly_output_event.o
$(OBJ)/execute_daily_output_event.o: tec/execute_daily_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_daily_output_event.c -o $(OBJ)/execute_daily_output_event.o
$(OBJ)/execute_daily_growth_output_event.o: tec/execute_daily_growth_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_daily_growth_output_event.c -o $(OBJ)/execute_daily_growth_output_event.o
$(OBJ)/execute_hourly_output_event.o: tec/execute_hourly_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_hourly_output_event.c -o $(OBJ)/execute_hourly_output_event.o
$(OBJ)/execute_hourly_growth_output_event.o: tec/execute_hourly_growth_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_hourly_growth_output_event.c -o $(OBJ)/execute_hourly_growth_output_event.o
$(OBJ)/execute_state_output_event.o: tec/execute_state_output_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_state_output_event.c -o $(OBJ)/execute_state_output_event.o
ifdef wmfire
$(OBJ)/execute_firespread_event.o: tec/execute_firespread_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_firespread_event.c -o $(OBJ)/execute_firespread_event.o
else
$(OBJ)/execute_firespread_event.o: tec/execute_firespread_event_dummy.c
	$(CC) -c $(CFLAGS) -I include tec/execute_firespread_event_dummy.c -o $(OBJ)/execute_firespread_event.o
endif
$(OBJ)/execute_tec.o: tec/execute_tec.c
	$(CC) -c $(CFLAGS) -I include tec/execute_tec.c -o $(OBJ)/execute_tec.o
$(OBJ)/construct_command_line.o: init/construct_command_line.c
	$(CC) -c $(CFLAGS) -I include init/construct_command_line.c -o $(OBJ)/construct_command_line.o
$(OBJ)/valid_option.o: tec/valid_option.c
	$(CC) -c $(CFLAGS) -I include tec/valid_option.c -o $(OBJ)/valid_option.o
$(OBJ)/construct_world.o: init/construct_world.c
	$(CC) -c $(CFLAGS) -I include init/construct_world.c -o $(OBJ)/construct_world.o
$(OBJ)/construct_filename_list.o: init/construct_filename_list.c
	$(CC) -c $(CFLAGS) -I include init/construct_filename_list.c -o $(OBJ)/construct_filename_list.o
$(OBJ)/construct_basin_defaults.o: init/construct_basin_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_basin_defaults.c -o $(OBJ)/construct_basin_defaults.o
$(OBJ)/construct_hillslope_defaults.o: init/construct_hillslope_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_hillslope_defaults.c -o $(OBJ)/construct_hillslope_defaults.o
$(OBJ)/construct_zone_defaults.o: init/construct_zone_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_zone_defaults.c -o $(OBJ)/construct_zone_defaults.o
$(OBJ)/construct_surface_energy_defaults.o: init/construct_surface_energy_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_surface_energy_defaults.c -o $(OBJ)/construct_surface_energy_defaults.o
$(OBJ)/construct_fire_defaults.o: init/construct_fire_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_fire_defaults.c -o $(OBJ)/construct_fire_defaults.o
$(OBJ)/construct_soil_defaults.o: init/construct_soil_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_soil_defaults.c -o $(OBJ)/construct_soil_defaults.o
$(OBJ)/construct_spinup_thresholds.o: init/construct_spinup_thresholds.c
	$(CC) -c $(CFLAGS) -I include init/construct_spinup_thresholds.c -o $(OBJ)/construct_spinup_thresholds.o
$(OBJ)/construct_spinup_defaults.o: init/construct_spinup_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_spinup_defaults.c -o $(OBJ)/construct_spinup_defaults.o
$(OBJ)/construct_empty_shadow_strata.o: init/construct_empty_shadow_strata.c
	$(CC) -c $(CFLAGS) -I include init/construct_empty_shadow_strata.c -o $(OBJ)/construct_empty_shadow_strata.o
$(OBJ)/construct_landuse_defaults.o: init/construct_landuse_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_landuse_defaults.c -o $(OBJ)/construct_landuse_defaults.o
$(OBJ)/construct_stratum_defaults.o: init/construct_stratum_defaults.c
	$(CC) -c $(CFLAGS) -I include init/construct_stratum_defaults.c -o $(OBJ)/construct_stratum_defaults.o
$(OBJ)/construct_base_station.o: init/construct_base_station.c
	$(CC) -c $(CFLAGS) -I include init/construct_base_station.c -o $(OBJ)/construct_base_station.o
$(OBJ)/construct_yearly_clim.o: init/construct_yearly_clim.c
	$(CC) -c $(CFLAGS) -I include init/construct_yearly_clim.c -o $(OBJ)/construct_yearly_clim.o
$(OBJ)/construct_monthly_clim.o: init/construct_monthly_clim.c
	$(CC) -c $(CFLAGS) -I include init/construct_monthly_clim.c -o $(OBJ)/construct_monthly_clim.o
$(OBJ)/construct_daily_clim.o: init/construct_daily_clim.c
	$(CC) -c $(CFLAGS) -I include init/construct_daily_clim.c -o $(OBJ)/construct_daily_clim.o
$(OBJ)/construct_hourly_clim.o: init/construct_hourly_clim.c
	$(CC) -c $(CFLAGS) -I include init/construct_hourly_clim.c -o $(OBJ)/construct_hourly_clim.o
$(OBJ)/construct_dated_input.o: init/construct_dated_input.c
	$(CC) -c $(CFLAGS) -I include init/construct_dated_input.c -o $(OBJ)/construct_dated_input.o
$(OBJ)/construct_clim_sequence.o: init/construct_clim_sequence.c
	$(CC) -c $(CFLAGS) -I include init/construct_clim_sequence.c -o $(OBJ)/construct_clim_sequence.o
$(OBJ)/construct_dated_clim_sequence.o: init/construct_dated_clim_sequence.c
	$(CC) -c $(CFLAGS) -I include init/construct_dated_clim_sequence.c -o $(OBJ)/construct_dated_clim_sequence.o
$(OBJ)/output_24hours_basin.o: output/output_24hours_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_24hours_basin.c -o $(OBJ)/output_24hours_basin.o
$(OBJ)/output_growth_patch.o: output/output_growth_patch.c
	$(CC) -c $(CFLAGS) -I include output/output_growth_patch.c -o $(OBJ)/output_growth_patch.o
$(OBJ)/output_growth_basin.o: output/output_growth_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_growth_basin.c -o $(OBJ)/output_growth_basin.o
$(OBJ)/output_growth_hillslope.o: output/output_growth_hillslope.c
	$(CC) -c $(CFLAGS) -I include output/output_growth_hillslope.c -o $(OBJ)/output_growth_hillslope.o
$(OBJ)/output_growth_zone.o: output/output_growth_zone.c
	$(CC) -c $(CFLAGS) -I include output/output_growth_zone.c -o $(OBJ)/output_growth_zone.o
$(OBJ)/output_growth_canopy_stratum.o: output/output_growth_canopy_stratum.c
	$(CC) -c $(CFLAGS) -I include output/output_growth_canopy_stratum.c -o $(OBJ)/output_growth_canopy_stratum.o
$(OBJ)/output_monthly_basin.o: output/output_monthly_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_monthly_basin.c -o $(OBJ)/output_monthly_basin.o
$(OBJ)/output_monthly_hillslope.o: output/output_monthly_hillslope.c
	$(CC) -c $(CFLAGS) -I include output/output_monthly_hillslope.c -o $(OBJ)/output_monthly_hillslope.o
$(OBJ)/output_monthly_zone.o: output/output_monthly_zone.c
	$(CC) -c $(CFLAGS) -I include output/output_monthly_zone.c -o $(OBJ)/output_monthly_zone.o
$(OBJ)/output_monthly_patch.o: output/output_monthly_patch.c
	$(CC) -c $(CFLAGS) -I include output/output_monthly_patch.c -o $(OBJ)/output_monthly_patch.o
$(OBJ)/output_monthly_canopy_stratum.o: output/output_monthly_canopy_stratum.c
	$(CC) -c $(CFLAGS) -I include output/output_monthly_canopy_stratum.c -o $(OBJ)/output_monthly_canopy_stratum.o
$(OBJ)/output_yearly_growth_basin.o: output/output_yearly_growth_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_growth_basin.c -o $(OBJ)/output_yearly_growth_basin.o
$(OBJ)/output_yearly_growth_hillslope.o: output/output_yearly_growth_hillslope.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_growth_hillslope.c -o $(OBJ)/output_yearly_growth_hillslope.o
$(OBJ)/output_yearly_growth_zone.o: output/output_yearly_growth_zone.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_growth_zone.c -o $(OBJ)/output_yearly_growth_zone.o
$(OBJ)/output_yearly_growth_patch.o: output/output_yearly_growth_patch.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_growth_patch.c -o $(OBJ)/output_yearly_growth_patch.o
$(OBJ)/output_yearly_growth_canopy_stratum.o: output/output_yearly_growth_canopy_stratum.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_growth_canopy_stratum.c -o $(OBJ)/output_yearly_growth_canopy_stratum.o
$(OBJ)/output_yearly_basin.o: output/output_yearly_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_basin.c -o $(OBJ)/output_yearly_basin.o
$(OBJ)/output_yearly_patch.o: output/output_yearly_patch.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_patch.c -o $(OBJ)/output_yearly_patch.o
$(OBJ)/output_yearly_hillslope.o: output/output_yearly_hillslope.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_hillslope.c -o $(OBJ)/output_yearly_hillslope.o
$(OBJ)/output_yearly_zone.o: output/output_yearly_zone.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_zone.c -o $(OBJ)/output_yearly_zone.o
$(OBJ)/output_yearly_canopy_stratum.o: output/output_yearly_canopy_stratum.c
	$(CC) -c $(CFLAGS) -I include output/output_yearly_canopy_stratum.c -o $(OBJ)/output_yearly_canopy_stratum.o
$(OBJ)/output_stream_routing.o: output/output_stream_routing.c
	$(CC) -c $(CFLAGS) -I include output/output_stream_routing.c -o $(OBJ)/output_stream_routing.o
$(OBJ)/output_hillslope.o: output/output_hillslope.c
	$(CC) -c $(CFLAGS) -I include output/output_hillslope.c -o $(OBJ)/output_hillslope.o
$(OBJ)/output_hourly_zone.o: output/output_hourly_zone.c
	$(CC) -c $(CFLAGS) -I include output/output_hourly_zone.c -o $(OBJ)/output_hourly_zone.o
$(OBJ)/output_hourly_basin.o: output/output_hourly_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_hourly_basin.c -o $(OBJ)/output_hourly_basin.o
$(OBJ)/output_hourly_growth_basin.o: output/output_hourly_growth_basin.c
	$(CC) -c $(CFLAGS) -I include output/output_hourly_growth_basin.c -o $(OBJ)/output_hourly_growth_basin.o
$(OBJ)/output_zone.o: output/output_zone.c
	$(CC) -c $(CFLAGS) -I include output/output_zone.c -o $(OBJ)/output_zone.o
$(OBJ)/output_patch.o: output/output_patch.c
	$(CC) -c $(CFLAGS) -I include output/output_patch.c -o $(OBJ)/output_patch.o
$(OBJ)/output_canopy_stratum.o: output/output_canopy_stratum.c
	$(CC) -c $(CFLAGS) -I include output/output_canopy_stratum.c -o $(OBJ)/output_canopy_stratum.o
$(OBJ)/output_basin_state.o: output/output_basin_state.c
	$(CC) -c $(CFLAGS) -I include output/output_basin_state.c -o $(OBJ)/output_basin_state.o
$(OBJ)/output_hillslope_state.o: output/output_hillslope_state.c
	$(CC) -c $(CFLAGS) -I include output/output_hillslope_state.c -o $(OBJ)/output_hillslope_state.o
$(OBJ)/output_zone_state.o: output/output_zone_state.c
	$(CC) -c $(CFLAGS) -I include output/output_zone_state.c -o $(OBJ)/output_zone_state.o
$(OBJ)/output_patch_state.o: output/output_patch_state.c
	$(CC) -c $(CFLAGS) -I include output/output_patch_state.c -o $(OBJ)/output_patch_state.o
$(OBJ)/output_canopy_strata_state.o: output/output_canopy_strata_state.c
	$(CC) -c $(CFLAGS) -I include output/output_canopy_strata_state.c -o $(OBJ)/output_canopy_strata_state.o
$(OBJ)/input_new_strata.o: tec/input_new_strata.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_strata.c -o $(OBJ)/input_new_strata.o
$(OBJ)/input_new_patch.o: tec/input_new_patch.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_patch.c -o $(OBJ)/input_new_patch.o
$(OBJ)/input_new_zone.o: tec/input_new_zone.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_zone.c -o $(OBJ)/input_new_zone.o
$(OBJ)/input_new_hillslope.o: tec/input_new_hillslope.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_hillslope.c -o $(OBJ)/input_new_hillslope.o
$(OBJ)/input_new_basin.o: tec/input_new_basin.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_basin.c -o $(OBJ)/input_new_basin.o
$(OBJ)/input_new_strata_mult.o: tec/input_new_strata_mult.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_strata_mult.c -o $(OBJ)/input_new_strata_mult.o
$(OBJ)/input_new_strata_thin.o: tec/input_new_strata_thin.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_strata_thin.c -o $(OBJ)/input_new_strata_thin.o
$(OBJ)/input_new_patch_mult.o: tec/input_new_patch_mult.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_patch_mult.c -o $(OBJ)/input_new_patch_mult.o
$(OBJ)/input_new_zone_mult.o: tec/input_new_zone_mult.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_zone_mult.c -o $(OBJ)/input_new_zone_mult.o
$(OBJ)/input_new_hillslope_mult.o: tec/input_new_hillslope_mult.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_hillslope_mult.c -o $(OBJ)/input_new_hillslope_mult.o
$(OBJ)/input_new_basin_mult.o: tec/input_new_basin_mult.c
	$(CC) -c $(CFLAGS) -I include tec/input_new_basin_mult.c -o $(OBJ)/input_new_basin_mult.o
$(OBJ)/execute_redefine_strata_event.o: tec/execute_redefine_strata_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_redefine_strata_event.c -o $(OBJ)/execute_redefine_strata_event.o
$(OBJ)/execute_redefine_world_event.o: tec/execute_redefine_world_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_redefine_world_event.c -o $(OBJ)/execute_redefine_world_event.o
$(OBJ)/execute_redefine_world_mult_event.o: tec/execute_redefine_world_mult_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_redefine_world_mult_event.c -o $(OBJ)/execute_redefine_world_mult_event.o
$(OBJ)/execute_redefine_world_thin_event.o: tec/execute_redefine_world_thin_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_redefine_world_thin_event.c -o $(OBJ)/execute_redefine_world_thin_event.o	
$(OBJ)/execute_road_construction_event.o: tec/execute_road_construction_event.c
	$(CC) -c $(CFLAGS) -I include tec/execute_road_construction_event.c -o $(OBJ)/execute_road_construction_event.o
$(OBJ)/find_basin.o: util/find_basin.c
	$(CC) -c $(CFLAGS) -I include util/find_basin.c -o $(OBJ)/find_basin.o
$(OBJ)/find_stratum.o: util/find_stratum.c
	$(CC) -c $(CFLAGS) -I include util/find_stratum.c -o $(OBJ)/find_stratum.o
$(OBJ)/find_stratum_in_patch.o: util/find_stratum_in_patch.c
	$(CC) -c $(CFLAGS) -I include util/find_stratum_in_patch.c -o $(OBJ)/find_stratum_in_patch.o
$(OBJ)/find_patch_in_zone.o: util/find_patch_in_zone.c
	$(CC) -c $(CFLAGS) -I include util/find_patch_in_zone.c -o $(OBJ)/find_patch_in_zone.o
$(OBJ)/find_zone_in_hillslope.o: util/find_zone_in_hillslope.c
	$(CC) -c $(CFLAGS) -I include util/find_zone_in_hillslope.c -o $(OBJ)/find_zone_in_hillslope.o
$(OBJ)/find_hillslope_in_basin.o: util/find_hillslope_in_basin.c
	$(CC) -c $(CFLAGS) -I include util/find_hillslope_in_basin.c -o $(OBJ)/find_hillslope_in_basin.o
$(OBJ)/yearday.o: util/yearday.c
	$(CC) -c $(CFLAGS) -I include util/yearday.c -o $(OBJ)/yearday.o
$(OBJ)/julday.o: util/julday.c
	$(CC) -c $(CFLAGS) -I include util/julday.c -o $(OBJ)/julday.o
$(OBJ)/create_random_distrb.o: util/create_random_distrb.c
	$(CC) -c $(CFLAGS) -I include util/create_random_distrb.c -o $(OBJ)/create_random_distrb.o
$(OBJ)/compute_mean_hillslope_parameters.o: init/compute_mean_hillslope_parameters.c
	$(CC) -c $(CFLAGS) -I include init/compute_mean_hillslope_parameters.c -o $(OBJ)/compute_mean_hillslope_parameters.o
$(OBJ)/compute_radiative_fluxes.o: rad/compute_radiative_fluxes.c
	$(CC) -c $(CFLAGS) -I include rad/compute_radiative_fluxes.c -o $(OBJ)/compute_radiative_fluxes.o
$(OBJ)/compute_diffuse_radiative_fluxes.o: rad/compute_diffuse_radiative_fluxes.c
	$(CC) -c $(CFLAGS) -I include rad/compute_diffuse_radiative_fluxes.c -o $(OBJ)/compute_diffuse_radiative_fluxes.o
$(OBJ)/compute_direct_radiative_fluxes.o: rad/compute_direct_radiative_fluxes.c
	$(CC) -c $(CFLAGS) -I include rad/compute_direct_radiative_fluxes.c -o $(OBJ)/compute_direct_radiative_fluxes.o
$(OBJ)/compute_direct_radiative_PAR_fluxes.o: rad/compute_direct_radiative_PAR_fluxes.c
	$(CC) -c $(CFLAGS) -I include rad/compute_direct_radiative_PAR_fluxes.c -o $(OBJ)/compute_direct_radiative_PAR_fluxes.o
$(OBJ)/compute_diffuse_radiative_PAR_fluxes.o: rad/compute_diffuse_radiative_PAR_fluxes.c
	$(CC) -c $(CFLAGS) -I include rad/compute_diffuse_radiative_PAR_fluxes.c -o $(OBJ)/compute_diffuse_radiative_PAR_fluxes.o
$(OBJ)/caldat.o: util/caldat.c
	$(CC) -c $(CFLAGS) -I include util/caldat.c -o $(OBJ)/caldat.o
$(OBJ)/cal_date_lt.o: util/cal_date_lt.c
	$(CC) -c $(CFLAGS) -I include util/cal_date_lt.c -o $(OBJ)/cal_date_lt.o
$(OBJ)/compute_year_day.o: util/compute_year_day.c
	$(CC) -c $(CFLAGS) -I include util/compute_year_day.c -o $(OBJ)/compute_year_day.o
$(OBJ)/construct_basin.o: init/construct_basin.c
	$(CC) -c $(CFLAGS) -I include init/construct_basin.c -o $(OBJ)/construct_basin.o
$(OBJ)/construct_ddn_routing_topology.o: init/construct_ddn_routing_topology.c
	$(CC) -c $(CFLAGS) -I include init/construct_ddn_routing_topology.c -o $(OBJ)/construct_ddn_routing_topology.o
$(OBJ)/construct_stream_routing_topology.o: init/construct_stream_routing_topology.c
	$(CC) -c $(CFLAGS) -I include init/construct_stream_routing_topology.c -o $(OBJ)/construct_stream_routing_topology.o
$(OBJ)/construct_routing_topology.o: init/construct_routing_topology.c
	$(CC) -c $(CFLAGS) -I include init/construct_routing_topology.c -o $(OBJ)/construct_routing_topology.o
$(OBJ)/construct_topmodel_patchlist.o: init/construct_topmodel_patchlist.c
	$(CC) -c $(CFLAGS) -I include init/construct_topmodel_patchlist.c -o $(OBJ)/construct_topmodel_patchlist.o
$(OBJ)/construct_fire_grid.o: init/construct_fire_grid.c
	$(CC) -c $(CFLAGS) -I include init/construct_fire_grid.c -o $(OBJ)/construct_fire_grid.o
$(OBJ)/construct_hillslope.o: init/construct_hillslope.c
	$(CC) -c $(CFLAGS) -I include init/construct_hillslope.c -o $(OBJ)/construct_hillslope.o
$(OBJ)/assign_neighbours.o: init/assign_neighbours.c
	$(CC) -c $(CFLAGS) -I include init/assign_neighbours.c -o $(OBJ)/assign_neighbours.o
$(OBJ)/assign_drainIN.o: init/assign_drainIN.c
	$(CC) -c $(CFLAGS) -I include init/assign_drainIN.c -o $(OBJ)/assign_drainIN.o	
$(OBJ)/assign_base_station.o: init/assign_base_station.c
	$(CC) -c $(CFLAGS) -I include init/assign_base_station.c -o $(OBJ)/assign_base_station.o
$(OBJ)/assign_base_station_xy.o: init/assign_base_station_xy.c
	$(CC) -c $(CFLAGS) -I include init/assign_base_station_xy.c -o $(OBJ)/assign_base_station_xy.o
$(OBJ)/construct_zone.o: init/construct_zone.c
	$(CC) -c $(CFLAGS) -I include init/construct_zone.c -o $(OBJ)/construct_zone.o
$(OBJ)/construct_patch.o: init/construct_patch.c
	$(CC) -c $(CFLAGS) -I include init/construct_patch.c -o $(OBJ)/construct_patch.o
$(OBJ)/find_patch.o: util/find_patch.c
	$(CC) -c $(CFLAGS) -I include util/find_patch.c -o $(OBJ)/find_patch.o
$(OBJ)/key_compare.o: util/key_compare.c
	$(CC) -c $(CFLAGS) -I include util/key_compare.c -o $(OBJ)/key_compare.o
$(OBJ)/construct_canopy_strata.o: init/construct_canopy_strata.c
	$(CC) -c $(CFLAGS) -I include init/construct_canopy_strata.c -o $(OBJ)/construct_canopy_strata.o
$(OBJ)/destroy_world.o: init/destroy_world.c
	$(CC) -c $(CFLAGS) -I include init/destroy_world.c -o $(OBJ)/destroy_world.o
$(OBJ)/destroy_basin_defaults.o: init/destroy_basin_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_basin_defaults.c -o $(OBJ)/destroy_basin_defaults.o
$(OBJ)/destroy_hillslope_defaults.o: init/destroy_hillslope_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_hillslope_defaults.c -o $(OBJ)/destroy_hillslope_defaults.o
$(OBJ)/destroy_zone_defaults.o: init/destroy_zone_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_zone_defaults.c -o $(OBJ)/destroy_zone_defaults.o
$(OBJ)/destroy_surface_energy_defaults.o: init/destroy_surface_energy_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_surface_energy_defaults.c -o $(OBJ)/destroy_surface_energy_defaults.o
$(OBJ)/destroy_fire_defaults.o: init/destroy_fire_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_fire_defaults.c -o $(OBJ)/destroy_fire_defaults.o
$(OBJ)/destroy_soil_defaults.o: init/destroy_soil_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_soil_defaults.c -o $(OBJ)/destroy_soil_defaults.o
$(OBJ)/destroy_landuse_defaults.o: init/destroy_landuse_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_landuse_defaults.c -o $(OBJ)/destroy_landuse_defaults.o
$(OBJ)/destroy_stratum_defaults.o: init/destroy_stratum_defaults.c
	$(CC) -c $(CFLAGS) -I include init/destroy_stratum_defaults.c -o $(OBJ)/destroy_stratum_defaults.o
$(OBJ)/destroy_base_station.o: init/destroy_base_station.c
	$(CC) -c $(CFLAGS) -I include init/destroy_base_station.c -o $(OBJ)/destroy_base_station.o
$(OBJ)/destroy_command_line.o: init/destroy_command_line.c
	$(CC) -c $(CFLAGS) -I include init/destroy_command_line.c -o $(OBJ)/destroy_command_line.o
$(OBJ)/destroy_basin.o: init/destroy_basin.c
	$(CC) -c $(CFLAGS) -I include init/destroy_basin.c -o $(OBJ)/destroy_basin.o
$(OBJ)/destroy_hillslope.o: init/destroy_hillslope.c
	$(CC) -c $(CFLAGS) -I include init/destroy_hillslope.c -o $(OBJ)/destroy_hillslope.o
$(OBJ)/destroy_zone.o: init/destroy_zone.c
	$(CC) -c $(CFLAGS) -I include init/destroy_zone.c -o $(OBJ)/destroy_zone.o
$(OBJ)/destroy_patch.o: init/destroy_patch.c
	$(CC) -c $(CFLAGS) -I include init/destroy_patch.c -o $(OBJ)/destroy_patch.o
$(OBJ)/destroy_canopy_stratum.o: init/destroy_canopy_stratum.c
	$(CC) -c $(CFLAGS) -I include init/destroy_canopy_stratum.c -o $(OBJ)/destroy_canopy_stratum.o
$(OBJ)/compute_hourly_rain_stored.o: hydro/compute_hourly_rain_stored.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_hourly_rain_stored.c -o $(OBJ)/compute_hourly_rain_stored.o
$(OBJ)/compute_rain_stored.o: hydro/compute_rain_stored.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_rain_stored.c -o $(OBJ)/compute_rain_stored.o
$(OBJ)/compute_potential_rain_interception.o: hydro/compute_potential_rain_interception.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_potential_rain_interception.c -o $(OBJ)/compute_potential_rain_interception.o
$(OBJ)/compute_potential_snow_interception.o: hydro/compute_potential_snow_interception.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_potential_snow_interception.c -o $(OBJ)/compute_potential_snow_interception.o
$(OBJ)/compute_snow_stored.o: hydro/compute_snow_stored.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_snow_stored.c -o $(OBJ)/compute_snow_stored.o
$(OBJ)/compute_Lstar.o: rad/compute_Lstar.c
	$(CC) -c $(CFLAGS) -I include rad/compute_Lstar.c -o $(OBJ)/compute_Lstar.o
$(OBJ)/compute_Lstar_canopy.o: rad/compute_Lstar_canopy.c
	$(CC) -c $(CFLAGS) -I include rad/compute_Lstar_canopy.c -o $(OBJ)/compute_Lstar_canopy.o
$(OBJ)/compute_stability_correction.o: hydro/compute_stability_correction.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_stability_correction.c -o $(OBJ)/compute_stability_correction.o
$(OBJ)/compute_atm_pres.o: clim/compute_atm_pres.c
	$(CC) -c $(CFLAGS) -I include clim/compute_atm_pres.c -o $(OBJ)/compute_atm_pres.o
$(OBJ)/compute_ra_overstory.o:	hydro/compute_ra_overstory.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_ra_overstory.c -o $(OBJ)/compute_ra_overstory.o
$(OBJ)/compute_ra_surface.o: hydro/compute_ra_surface.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_ra_surface.c -o $(OBJ)/compute_ra_surface.o
$(OBJ)/compute_ra_understory.o: hydro/compute_ra_understory.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_ra_understory.c -o $(OBJ)/compute_ra_understory.o
$(OBJ)/compute_lwp_predawn.o: hydro/compute_lwp_predawn.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_lwp_predawn.c -o $(OBJ)/compute_lwp_predawn.o
$(OBJ)/leaf_conductance_CO2_curve.o: cn/leaf_conductance_CO2_curve.c
	$(CC) -c $(CFLAGS) -I include cn/leaf_conductance_CO2_curve.c -o $(OBJ)/leaf_conductance_CO2_curve.o
$(OBJ)/leaf_conductance_APAR_curve.o: cn/leaf_conductance_APAR_curve.c
	$(CC) -c $(CFLAGS) -I include cn/leaf_conductance_APAR_curve.c -o $(OBJ)/leaf_conductance_APAR_curve.o
$(OBJ)/leaf_conductance_LWP_curve.o: cn/leaf_conductance_LWP_curve.c
	$(CC) -c $(CFLAGS) -I include cn/leaf_conductance_LWP_curve.c -o $(OBJ)/leaf_conductance_LWP_curve.o
$(OBJ)/leaf_conductance_tavg_curve.o: cn/leaf_conductance_tavg_curve.c
	$(CC) -c $(CFLAGS) -I include cn/leaf_conductance_tavg_curve.c -o $(OBJ)/leaf_conductance_tavg_curve.o
$(OBJ)/leaf_conductance_tmin_curve.o: cn/leaf_conductance_tmin_curve.c
	$(CC) -c $(CFLAGS) -I include cn/leaf_conductance_tmin_curve.c -o $(OBJ)/leaf_conductance_tmin_curve.o
$(OBJ)/leaf_conductance_vpd_curve.o: cn/leaf_conductance_vpd_curve.c
	$(CC) -c $(CFLAGS) -I include cn/leaf_conductance_vpd_curve.c -o $(OBJ)/leaf_conductance_vpd_curve.o
$(OBJ)/penman_monteith.o: hydro/penman_monteith.c
	$(CC) -c $(CFLAGS) -I include hydro/penman_monteith.c -o $(OBJ)/penman_monteith.o
$(OBJ)/compute_subsurface_temperature_profile.o: rad/compute_subsurface_temperature_profile.c
	$(CC) -c $(CFLAGS) -I include rad/compute_subsurface_temperature_profile.c -o $(OBJ)/compute_subsurface_temperature_profile.o
$(OBJ)/compute_surface_heat_flux.o: rad/compute_surface_heat_flux.c
	$(CC) -c $(CFLAGS) -I include rad/compute_surface_heat_flux.c -o $(OBJ)/compute_surface_heat_flux.o
$(OBJ)/compute_nonvascular_stratum_conductance.o: hydro/compute_nonvascular_stratum_conductance.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_nonvascular_stratum_conductance.c -o $(OBJ)/compute_nonvascular_stratum_conductance.o
$(OBJ)/compute_vascular_stratum_conductance.o: hydro/compute_vascular_stratum_conductance.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_vascular_stratum_conductance.c -o $(OBJ)/compute_vascular_stratum_conductance.o
$(OBJ)/compute_vapor_pressure_deficit.o: hydro/compute_vapor_pressure_deficit.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_vapor_pressure_deficit.c -o $(OBJ)/compute_vapor_pressure_deficit.o
$(OBJ)/compute_vapour_conductance.o: hydro/compute_vapour_conductance.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_vapour_conductance.c -o $(OBJ)/compute_vapour_conductance.o
$(OBJ)/compute_toc_wind.o: clim/compute_toc_wind.c
	$(CC) -c $(CFLAGS) -I include clim/compute_toc_wind.c -o $(OBJ)/compute_toc_wind.o
$(OBJ)/recompute_gamma.o: hydro/recompute_gamma.c
	$(CC) -c $(CFLAGS) -I include hydro/recompute_gamma.c -o $(OBJ)/recompute_gamma.o
$(OBJ)/compute_stream_routing.o: hydro/compute_stream_routing.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_stream_routing.c -o $(OBJ)/compute_stream_routing.o
$(OBJ)/compute_subsurface_routing.o: hydro/compute_subsurface_routing.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_subsurface_routing.c -o $(OBJ)/compute_subsurface_routing.o
$(OBJ)/compute_subsurface_routing_hourly.o: hydro/compute_subsurface_routing_hourly.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_subsurface_routing_hourly.c -o $(OBJ)/compute_subsurface_routing_hourly.o
$(OBJ)/compute_potential_exfiltration.o: hydro/compute_potential_exfiltration.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_potential_exfiltration.c -o $(OBJ)/compute_potential_exfiltration.o
$(OBJ)/Ksat_z_curve.o: cn/Ksat_z_curve.c
	$(CC) -c $(CFLAGS) -I include cn/Ksat_z_curve.c -o $(OBJ)/Ksat_z_curve.o
$(OBJ)/compute_z_final.o: hydro/compute_z_final.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_z_final.c -o $(OBJ)/compute_z_final.o
$(OBJ)/compute_delta_water.o: hydro/compute_delta_water.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_delta_water.c -o $(OBJ)/compute_delta_water.o
$(OBJ)/compute_soil_water_potential.o: hydro/compute_soil_water_potential.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_soil_water_potential.c -o $(OBJ)/compute_soil_water_potential.o
$(OBJ)/compute_layer_field_capacity.o: hydro/compute_layer_field_capacity.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_layer_field_capacity.c -o $(OBJ)/compute_layer_field_capacity.o
$(OBJ)/compute_growingseason_index.o: cn/compute_growingseason_index.c
	$(CC) -c $(CFLAGS) -I include cn/compute_growingseason_index.c -o $(OBJ)/compute_growingseason_index.o
$(OBJ)/compute_field_capacity.o: hydro/compute_field_capacity.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_field_capacity.c -o $(OBJ)/compute_field_capacity.o
$(OBJ)/compute_transmissivity_curve.o: hydro/compute_transmissivity_curve.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_transmissivity_curve.c -o $(OBJ)/compute_transmissivity_curve.o
$(OBJ)/compute_infiltration.o: hydro/compute_infiltration.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_infiltration.c -o $(OBJ)/compute_infiltration.o
$(OBJ)/compute_varbased_returnflow.o: hydro/compute_varbased_returnflow.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_varbased_returnflow.c -o $(OBJ)/compute_varbased_returnflow.o
$(OBJ)/compute_varbased_flow.o: hydro/compute_varbased_flow.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_varbased_flow.c -o $(OBJ)/compute_varbased_flow.o
$(OBJ)/compute_return_flow.o: hydro/compute_return_flow.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_return_flow.c -o $(OBJ)/compute_return_flow.o
$(OBJ)/compute_saturation_vapor_pressure.o: hydro/compute_saturation_vapor_pressure.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_saturation_vapor_pressure.c -o $(OBJ)/compute_saturation_vapor_pressure.o
$(OBJ)/compute_snow_sublimation.o: hydro/compute_snow_sublimation.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_snow_sublimation.c -o $(OBJ)/compute_snow_sublimation.o
$(OBJ)/compute_capillary_rise.o: hydro/compute_capillary_rise.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_capillary_rise.c -o $(OBJ)/compute_capillary_rise.o
$(OBJ)/compute_unsat_zone_drainage.o: hydro/compute_unsat_zone_drainage.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_unsat_zone_drainage.c -o $(OBJ)/compute_unsat_zone_drainage.o
$(OBJ)/snowpack_daily_F.o: hydro/snowpack_daily_F.c
	$(CC) -c $(CFLAGS) -I include hydro/snowpack_daily_F.c -o $(OBJ)/snowpack_daily_F.o
$(OBJ)/sort_by_elevation.o: util/sort_by_elevation.c
	$(CC) -c $(CFLAGS) -I include util/sort_by_elevation.c -o $(OBJ)/sort_by_elevation.o
$(OBJ)/sort_patch_layers.o: util/sort_patch_layers.c
	$(CC) -c $(CFLAGS) -I include util/sort_patch_layers.c -o $(OBJ)/sort_patch_layers.o
$(OBJ)/top_model.o: hydro/top_model.c
	$(CC) -c $(CFLAGS) -I include hydro/top_model.c -o $(OBJ)/top_model.o
$(OBJ)/compute_maint_resp.o: cn/compute_maint_resp.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_maint_resp.c -o $(OBJ)/compute_maint_resp.o
$(OBJ)/compute_farq_psn.o: cn/compute_farq_psn.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_farq_psn.c -o $(OBJ)/compute_farq_psn.o
$(OBJ)/zero_patch_daily_flux.o: hydro/zero_patch_daily_flux.c 
	$(CC) -c $(CFLAGS) -I include hydro/zero_patch_daily_flux.c -o $(OBJ)/zero_patch_daily_flux.o
$(OBJ)/zero_stratum_daily_flux.o: cn/zero_stratum_daily_flux.c 
	$(CC) -c $(CFLAGS) -I include cn/zero_stratum_daily_flux.c -o $(OBJ)/zero_stratum_daily_flux.o
$(OBJ)/zero_stratum_annual_flux.o: cn/zero_stratum_annual_flux.c 
	$(CC) -c $(CFLAGS) -I include cn/zero_stratum_annual_flux.c -o $(OBJ)/zero_stratum_annual_flux.o
$(OBJ)/world_daily_F.o: cycle/world_daily_F.c 
	$(CC) -c $(CFLAGS) -I include cycle/world_daily_F.c -o $(OBJ)/world_daily_F.o
$(OBJ)/basin_daily_F.o: cycle/basin_daily_F.c
	$(CC) -c $(CFLAGS) -I include cycle/basin_daily_F.c -o $(OBJ)/basin_daily_F.o
$(OBJ)/hillslope_daily_F.o: cycle/hillslope_daily_F.c 
	$(CC) -c $(CFLAGS) -I include cycle/hillslope_daily_F.c -o $(OBJ)/hillslope_daily_F.o
$(OBJ)/zone_daily_F.o: cycle/zone_daily_F.c 
	$(CC) -c $(CFLAGS) -I include cycle/zone_daily_F.c -o $(OBJ)/zone_daily_F.o
$(OBJ)/world_daily_I.o: cycle/world_daily_I.c 
	$(CC) -c $(CFLAGS) -I include cycle/world_daily_I.c -o $(OBJ)/world_daily_I.o
$(OBJ)/basin_daily_I.o: cycle/basin_daily_I.c
	$(CC) -c $(CFLAGS) -I include cycle/basin_daily_I.c -o $(OBJ)/basin_daily_I.o
$(OBJ)/hillslope_daily_I.o: cycle/hillslope_daily_I.c 
	$(CC) -c $(CFLAGS) -I include cycle/hillslope_daily_I.c -o $(OBJ)/hillslope_daily_I.o
$(OBJ)/zone_daily_I.o: cycle/zone_daily_I.c 
	$(CC) -c $(CFLAGS) -I include cycle/zone_daily_I.c -o $(OBJ)/zone_daily_I.o
$(OBJ)/patch_daily_I.o: cycle/patch_daily_I.c  
	$(CC) -c $(CFLAGS) -I include cycle/patch_daily_I.c -o $(OBJ)/patch_daily_I.o
$(OBJ)/patch_daily_F.o: cycle/patch_daily_F.c  
	$(CC) -c $(CFLAGS) -I include cycle/patch_daily_F.c -o $(OBJ)/patch_daily_F.o
$(OBJ)/canopy_stratum_daily_I.o: cycle/canopy_stratum_daily_I.c
	$(CC) -c $(CFLAGS) -I include cycle/canopy_stratum_daily_I.c -o $(OBJ)/canopy_stratum_daily_I.o
$(OBJ)/canopy_stratum_daily_F.o: cycle/canopy_stratum_daily_F.c
	$(CC) -c $(CFLAGS) -I include cycle/canopy_stratum_daily_F.c -o $(OBJ)/canopy_stratum_daily_F.o
$(OBJ)/world_hourly.o: cycle/world_hourly.c
	$(CC) -c $(CFLAGS) -I include cycle/world_hourly.c -o $(OBJ)/world_hourly.o
$(OBJ)/basin_hourly.o: cycle/basin_hourly.c 
	$(CC) -c $(CFLAGS) -I include cycle/basin_hourly.c -o $(OBJ)/basin_hourly.o
$(OBJ)/hillslope_hourly.o: cycle/hillslope_hourly.c 
	$(CC) -c $(CFLAGS) -I include cycle/hillslope_hourly.c -o $(OBJ)/hillslope_hourly.o
$(OBJ)/patch_hourly.o: cycle/patch_hourly.c
	$(CC) -c $(CFLAGS) -I include cycle/patch_hourly.c -o $(OBJ)/patch_hourly.o
$(OBJ)/zone_hourly.o: cycle/zone_hourly.c 
	$(CC) -c $(CFLAGS) -I include cycle/zone_hourly.c -o $(OBJ)/zone_hourly.o
$(OBJ)/canopy_stratum_hourly.o: cycle/canopy_stratum_hourly.c
	$(CC) -c $(CFLAGS) -I include cycle/canopy_stratum_hourly.c -o $(OBJ)/canopy_stratum_hourly.o
$(OBJ)/update_basin_patch_accumulator.o: hydro/update_basin_patch_accumulator.c
	$(CC) -c $(CFLAGS) -I include hydro/update_basin_patch_accumulator.c -o $(OBJ)/update_basin_patch_accumulator.o
$(OBJ)/update_drainage_stream.o: hydro/update_drainage_stream.c 
	$(CC) -c $(CFLAGS) -I include hydro/update_drainage_stream.c -o $(OBJ)/update_drainage_stream.o
$(OBJ)/update_drainage_road.o: hydro/update_drainage_road.c 
	$(CC) -c $(CFLAGS) -I include hydro/update_drainage_road.c -o $(OBJ)/update_drainage_road.o
$(OBJ)/update_drainage_land.o: hydro/update_drainage_land.c 
	$(CC) -c $(CFLAGS) -I include hydro/update_drainage_land.c -o $(OBJ)/update_drainage_land.o
$(OBJ)/update_hillslope_accumulator.o: hydro/update_hillslope_accumulator.c
	$(CC) -c $(CFLAGS) -I include hydro/update_hillslope_accumulator.c -o $(OBJ)/update_hillslope_accumulator.o
$(OBJ)/update_soil_moisture.o: hydro/update_soil_moisture.c 
	$(CC) -c $(CFLAGS) -I include hydro/update_soil_moisture.c -o $(OBJ)/update_soil_moisture.o
$(OBJ)/skip_basin.o: tec/skip_basin.c
	$(CC) -c $(CFLAGS) -I include tec/skip_basin.c -o $(OBJ)/skip_basin.o
$(OBJ)/skip_hillslope.o: tec/skip_hillslope.c
	$(CC) -c $(CFLAGS) -I include tec/skip_hillslope.c -o $(OBJ)/skip_hillslope.o
$(OBJ)/skip_zone.o: tec/skip_zone.c
	$(CC) -c $(CFLAGS) -I include tec/skip_zone.c -o $(OBJ)/skip_zone.o
$(OBJ)/skip_patch.o: tec/skip_patch.c
	$(CC) -c $(CFLAGS) -I include tec/skip_patch.c -o $(OBJ)/skip_patch.o
$(OBJ)/skip_strata.o: tec/skip_strata.c
	$(CC) -c $(CFLAGS) -I include tec/skip_strata.c -o $(OBJ)/skip_strata.o


# dynamic bgc routines
$(OBJ)/allocate_annual_growth.o: cn/allocate_annual_growth.c 
	$(CC) -c $(CFLAGS) -I include cn/allocate_annual_growth.c -o $(OBJ)/allocate_annual_growth.o
$(OBJ)/canopy_stratum_growth.o: cycle/canopy_stratum_growth.c
	$(CC) -c $(CFLAGS) -I include cycle/canopy_stratum_growth.c -o $(OBJ)/canopy_stratum_growth.o
$(OBJ)/check_zero_stores.o: util/check_zero_stores.c
	$(CC) -c $(CFLAGS) -I include util/check_zero_stores.c -o $(OBJ)/check_zero_stores.o
$(OBJ)/compute_annual_turnover.o: cn/compute_annual_turnover.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_annual_turnover.c -o $(OBJ)/compute_annual_turnover.o
$(OBJ)/compute_annual_litfall.o: cn/compute_annual_litfall.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_annual_litfall.c -o $(OBJ)/compute_annual_litfall.o
$(OBJ)/compute_cwd_decay.o: cn/compute_cwd_decay.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_cwd_decay.c -o $(OBJ)/compute_cwd_decay.o
$(OBJ)/compute_deadleaf_turnover.o: cn/compute_deadleaf_turnover.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_deadleaf_turnover.c -o $(OBJ)/compute_deadleaf_turnover.o
$(OBJ)/compute_leaf_litfall.o: cn/compute_leaf_litfall.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_leaf_litfall.c -o $(OBJ)/compute_leaf_litfall.o
$(OBJ)/compute_N_leached.o: cn/compute_N_leached.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_N_leached.c -o $(OBJ)/compute_N_leached.o
$(OBJ)/compute_N_absorbed.o: cn/compute_N_absorbed.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_N_absorbed.c -o $(OBJ)/compute_N_absorbed.o
$(OBJ)/compute_froot_litfall.o: cn/compute_froot_litfall.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_froot_litfall.c -o $(OBJ)/compute_froot_litfall.o
$(OBJ)/compute_growth_resp.o: cn/compute_growth_resp.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_growth_resp.c -o $(OBJ)/compute_growth_resp.o
$(OBJ)/compute_prop_alloc_daily.o: cn/compute_prop_alloc_daily.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_prop_alloc_daily.c -o $(OBJ)/compute_prop_alloc_daily.o
$(OBJ)/compute_potential_decomp.o: cn/compute_potential_decomp.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_potential_decomp.c -o $(OBJ)/compute_potential_decomp.o
$(OBJ)/compute_potential_N_uptake.o: cn/compute_potential_N_uptake.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_potential_N_uptake.c -o $(OBJ)/compute_potential_N_uptake.o
$(OBJ)/compute_potential_N_uptake_Waring.o: cn/compute_potential_N_uptake_Waring.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_potential_N_uptake_Waring.c -o $(OBJ)/compute_potential_N_uptake_Waring.o
$(OBJ)/compute_potential_N_uptake_Dickenson.o: cn/compute_potential_N_uptake_Dickenson.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_potential_N_uptake_Dickenson.c -o $(OBJ)/compute_potential_N_uptake_Dickenson.o
$(OBJ)/compute_potential_N_uptake_combined.o: cn/compute_potential_N_uptake_combined.c 
	$(CC) -c $(CFLAGS) -I include cn/compute_potential_N_uptake_combined.c -o $(OBJ)/compute_potential_N_uptake_combined.o
$(OBJ)/compute_litter_rain_stored.o: hydro/compute_litter_rain_stored.c 
	$(CC) -c $(CFLAGS) -I include hydro/compute_litter_rain_stored.c -o $(OBJ)/compute_litter_rain_stored.o
$(OBJ)/compute_hourly_litter_rain_stored.o: hydro/compute_hourly_litter_rain_stored.c
	$(CC) -c $(CFLAGS) -I include hydro/compute_hourly_litter_rain_stored.c -o $(OBJ)/compute_hourly_litter_rain_stored.o
$(OBJ)/surface_daily_F.o: cycle/surface_daily_F.c 
	$(CC) -c $(CFLAGS) -I include cycle/surface_daily_F.c -o $(OBJ)/surface_daily_F.o
$(OBJ)/surface_hourly.o: cycle/surface_hourly.c
	$(CC) -c $(CFLAGS) -I include cycle/surface_hourly.c -o $(OBJ)/surface_hourly.o
$(OBJ)/parse_alloc_flag.o: init/parse_alloc_flag.c 
	$(CC) -c $(CFLAGS) -I include init/parse_alloc_flag.c -o $(OBJ)/parse_alloc_flag.o
$(OBJ)/parse_dyn_flag.o: init/parse_dyn_flag.c 
	$(CC) -c $(CFLAGS) -I include init/parse_dyn_flag.c -o $(OBJ)/parse_dyn_flag.o
$(OBJ)/parse_veg_type.o: init/parse_veg_type.c 
	$(CC) -c $(CFLAGS) -I include init/parse_veg_type.c -o $(OBJ)/parse_veg_type.o
$(OBJ)/parse_phenology_type.o: init/parse_phenology_type.c 
	$(CC) -c $(CFLAGS) -I include init/parse_phenology_type.c -o $(OBJ)/parse_phenology_type.o
$(OBJ)/parse_albedo_flag.o: init/parse_albedo_flag.c 
	$(CC) -c $(CFLAGS) -I include init/parse_albedo_flag.c -o $(OBJ)/parse_albedo_flag.o
$(OBJ)/resolve_sminn_competition.o: cn/resolve_sminn_competition.c 
	$(CC) -c $(CFLAGS) -I include cn/resolve_sminn_competition.c -o $(OBJ)/resolve_sminn_competition.o
$(OBJ)/update_C_stratum_daily.o: cn/update_C_stratum_daily.c 
	$(CC) -c $(CFLAGS) -I include cn/update_C_stratum_daily.c -o $(OBJ)/update_C_stratum_daily.o
$(OBJ)/update_N_stratum_daily.o: cn/update_N_stratum_daily.c 
	$(CC) -c $(CFLAGS) -I include cn/update_N_stratum_daily.c -o $(OBJ)/update_N_stratum_daily.o
$(OBJ)/update_decomp.o: cn/update_decomp.c 
	$(CC) -c $(CFLAGS) -I include cn/update_decomp.c -o $(OBJ)/update_decomp.o
$(OBJ)/update_shadow_strata.o: cn/update_shadow_strata.c
	$(CC) -c $(CFLAGS) -I include cn/update_shadow_strata.c -o $(OBJ)/update_shadow_strata.o
$(OBJ)/update_septic.o: cn/update_septic.c 
	$(CC) -c $(CFLAGS) -I include cn/update_septic.c -o $(OBJ)/update_septic.o
$(OBJ)/update_gw_drainage.o: hydro/update_gw_drainage.c 
	$(CC) -c $(CFLAGS) -I include hydro/update_gw_drainage.c -o $(OBJ)/update_gw_drainage.o
$(OBJ)/update_denitrif.o: cn/update_denitrif.c 
	$(CC) -c $(CFLAGS) -I include cn/update_denitrif.c -o $(OBJ)/update_denitrif.o
$(OBJ)/update_dissolved_organic_losses.o: cn/update_dissolved_organic_losses.c 
	$(CC) -c $(CFLAGS) -I include cn/update_dissolved_organic_losses.c -o $(OBJ)/update_dissolved_organic_losses.o
$(OBJ)/update_mortality.o: cn/update_mortality.c 
	$(CC) -c $(CFLAGS) -I include cn/update_mortality.c -o $(OBJ)/update_mortality.o
$(OBJ)/update_branch_mortality.o: cn/update_branch_mortality.c 
	$(CC) -c $(CFLAGS) -I include cn/update_branch_mortality.c -o $(OBJ)/update_branch_mortality.o
$(OBJ)/update_nitrif.o: cn/update_nitrif.c 
	$(CC) -c $(CFLAGS) -I include cn/update_nitrif.c -o $(OBJ)/update_nitrif.o
$(OBJ)/update_litter_interception_capacity.o: hydro/update_litter_interception_capacity.c 
	$(CC) -c $(CFLAGS) -I include hydro/update_litter_interception_capacity.c -o $(OBJ)/update_litter_interception_capacity.o
$(OBJ)/allocate_daily_growth.o: cn/allocate_daily_growth.c 
	$(CC) -c $(CFLAGS) -I include cn/allocate_daily_growth.c -o $(OBJ)/allocate_daily_growth.o
$(OBJ)/update_rooting_depth.o: cn/update_rooting_depth.c 
	$(CC) -c $(CFLAGS) -I include cn/update_rooting_depth.c -o $(OBJ)/update_rooting_depth.o
$(OBJ)/update_phenology.o: cn/update_phenology.c 
	$(CC) -c $(CFLAGS) -I include cn/update_phenology.c -o $(OBJ)/update_phenology.o
$(OBJ)/output_template_structure.o: output/output_template_structure.c 
	$(CC) -c $(CFLAGS) -I include output/output_template_structure.c -o $(OBJ)/output_template_structure.o
$(OBJ)/construct_ascii_grid.o: init/construct_ascii_grid.c
	$(CC) -c $(CFLAGS) -I include init/construct_ascii_grid.c -o $(OBJ)/construct_ascii_grid.o

ifdef netcdf
$(OBJ)/construct_netcdf_grid.o: init/construct_netcdf_grid.c
	$(CC) -c $(CFLAGS) -I include init/construct_netcdf_grid.c -o $(OBJ)/construct_netcdf_grid.o
$(OBJ)/read_netcdf.o: init/read_netcdf.c
	$(CC) -c $(CFLAGS) -I include init/read_netcdf.c -o $(OBJ)/read_netcdf.o
else
$(OBJ)/construct_netcdf_grid.o: init/construct_netcdf_grid_dummy.c
	$(CC) -c $(CFLAGS) -I include init/construct_netcdf_grid_dummy.c -o $(OBJ)/construct_netcdf_grid.o
$(OBJ)/read_netcdf.o: init/read_netcdf_dummy.c
	$(CC) -c $(CFLAGS) -I include init/read_netcdf_dummy.c -o $(OBJ)/read_netcdf.o
endif

$(OBJ)/construct_netcdf_header.o: init/construct_netcdf_header.c
	$(CC) -c $(CFLAGS) -I include init/construct_netcdf_header.c -o $(OBJ)/construct_netcdf_header.o
$(OBJ)/params.o: util/params.c
	$(CC) -c $(CFLAGS) -I include util/params.c -o $(OBJ)/params.o
$(OBJ)/resemble_hourly_date.o: util/resemble_hourly_date.c
	$(CC) -c $(CFLAGS) -I include util/resemble_hourly_date.c -o $(OBJ)/resemble_hourly_date.o
$(OBJ)/union_date_init.o: util/union_date_init.c
	$(CC) -c $(CFLAGS) -I include util/union_date_init.c -o $(OBJ)/union_date_init.o
$(OBJ)/union_date_combine.o: util/union_date_combine.c
	$(CC) -c $(CFLAGS) -I include util/union_date_combine.c -o $(OBJ)/union_date_combine.o
$(OBJ)/get_num_daywhourly.o: util/get_num_daywhourly.c
	$(CC) -c $(CFLAGS) -I include util/get_num_daywhourly.c -o $(OBJ)/get_num_daywhourly.o
$(OBJ)/date_oper_union.o: util/date_oper_union.c
	$(CC) -c $(CFLAGS) -I include util/date_oper_union.c -o $(OBJ)/date_oper_union.o
$(OBJ)/reconstruct_hourly_clim.o: init/reconstruct_hourly_clim.c
	$(CC) -c $(CFLAGS) -I include init/reconstruct_hourly_clim.c -o $(OBJ)/reconstruct_hourly_clim.o
$(OBJ)/main.o: main.c setversion
	$(CC) -c $(CFLAGS) -I include main.c -o $(OBJ)/main.o

setversion:
ifeq ($(OS), Darwin)
	sed -e 's/<<RHESSYS_VERSION>>/$(VERSION)/g' -i '' ./main.c	
else ifeq ($(OS), Linux)
	sed -e 's/<<RHESSYS_VERSION>>/$(VERSION)/g' ./main.c
else
	sed -e 's/<<RHESSYS_VERSION>>/$(VERSION)/g' ./main.c
endif

install:
	cp $(PGM) $(RHESSYS_BIN)

clean:
	rm -f $(OBJECTS)

clobber:
	rm -f $(OBJECTS) $(PGM)

functest: rhessys
	# Run Python-based functional testing
	RHESSYS_BIN=$(PGM) python -m unittest discover -s test
