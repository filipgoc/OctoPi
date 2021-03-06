_description: PLA Medium profile from IMADE3D; v4;  0.2mm layer height; for Cura Legacy (up to 15.04)
_display_name: PLA_0.2_medium
bottom_layer_speed: 20
bottom_thickness: 0.6
brim_line_count: 10
cool_head_lift: false
cool_min_feedrate: 10
cool_min_layer_time: 5
end_gcode:
- '

  ;---------------------------------

  ;;; Jellybox End Script Begin ;;;

  ;_________________________________

  ; end gcode last modified Nov 30, 2018

  M117 Finishing Up ;write Finishing Up

  M107        ;turn the fan off

  M104 S0     ;extruder heater off

  M140 S0     ;bed heater off (if you have it)

  G91         ;relative positioning

  G1 E-1 F2500 ;retract the filament a bit before lifting the nozzle to release some
  of the pressure

  G1 Z0.5 E-4 X-10 F9000 ;get out and retract filament even more

  G1 E-25 F2500 ;retract even more

  G90         ;absolute positioning

  G28 X       ;home X so the head is out of the way

  G1 Y140     ;move Y forward, so the print is more accessible

  M84         ;steppers off

  M117 Print finished ;write Print finished

  ;---------------------------------------

  ;;; Jellybox End Script End ;;;

  ;_______________________________________'
- ';End GCode

  M104 T0 S0                     ;extruder heater off

  M104 T1 S0                     ;extruder heater off

  M140 S0                     ;heated bed heater off (if you have it)

  G91                                    ;relative positioning

  G1 E-1 F300                            ;retract the filament a bit before lifting
  the nozzle, to release some of the pressure

  G1 Z+0.5 E-5 X-20 Y-20 F{travel_speed} ;move Z up a bit and retract filament even
  more

  G28 X0 Y0                              ;move X/Y to min endstops, so the head is
  out of the way

  M84                         ;steppers off

  G90                         ;absolute positioning

  ;{profile_string}'
- ';End GCode

  M104 T0 S0                     ;extruder heater off

  M104 T1 S0                     ;extruder heater off

  M104 T2 S0                     ;extruder heater off

  M140 S0                     ;heated bed heater off (if you have it)

  G91                                    ;relative positioning

  G1 E-1 F300                            ;retract the filament a bit before lifting
  the nozzle, to release some of the pressure

  G1 Z+0.5 E-5 X-20 Y-20 F{travel_speed} ;move Z up a bit and retract filament even
  more

  G28 X0 Y0                              ;move X/Y to min endstops, so the head is
  out of the way

  M84                         ;steppers off

  G90                         ;absolute positioning

  ;{profile_string}'
- ';End GCode

  M104 T0 S0                     ;extruder heater off

  M104 T1 S0                     ;extruder heater off

  M104 T2 S0                     ;extruder heater off

  M104 T3 S0                     ;extruder heater off

  M140 S0                     ;heated bed heater off (if you have it)

  G91                                    ;relative positioning

  G1 E-1 F300                            ;retract the filament a bit before lifting
  the nozzle, to release some of the pressure

  G1 Z+0.5 E-5 X-20 Y-20 F{travel_speed} ;move Z up a bit and retract filament even
  more

  G28 X0 Y0                              ;move X/Y to min endstops, so the head is
  out of the way

  M84                         ;steppers off

  G90                         ;absolute positioning

  ;{profile_string}'
fan_enabled: true
fan_full_height: 0.6
fan_speed: 100
fan_speed_max: 100
filament_diameter:
- 1.75
- false
- false
- false
filament_flow: 100.0
fill_density: 30
fill_overlap: 15
first_layer_width_factor: 100
fix_horrible_extensive_stitching: false
fix_horrible_union_all_type_a: true
fix_horrible_union_all_type_b: false
fix_horrible_use_open_bits: false
follow_surface: false
infill_speed: 45
inner_shell_speed: 35
layer_height: 0.2
object_sink: 0.0
ooze_shield: false
outer_shell_speed: 25
overlap_dual: 0.15
perimeter_before_infill: true
platform_adhesion: none
print_bed_temperature: 60
print_speed: 45
print_temperature:
- 210
- false
- false
- false
raft_airgap: 0.22
raft_airgap_all: 0.0
raft_base_linewidth: 1.0
raft_base_thickness: 0.3
raft_interface_linewidth: 0.4
raft_interface_thickness: 0.27
raft_line_spacing: 3.0
raft_margin: 5.0
raft_surface_layers: 2
raft_surface_linewidth: 0.4
raft_surface_thickness: 0.27
retraction_amount: 1.5
retraction_combing: no skin
retraction_dual_amount: 16.5
retraction_enable: true
retraction_hop: 0.0
retraction_min_travel: 1.5
retraction_minimal_extrusion: 0.02
retraction_speed: 70
skirt_gap: 3.0
skirt_line_count: true
skirt_minimal_length: 100
solid_bottom: true
solid_layer_thickness: 0.9
solid_top: true
solidarea_speed: 30
spiralize: false
start_gcode:
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;---------------------------------------

  ; ; ; Jellybox Start Script Begin ; ; ;

  ;_______________________________________

  ; for slicer: Cura 15 (old Cura)

  ; start gcode last modified May 20, 2019

  G21               ;metric values

  G90               ;absolute positioning

  M82               ;set extruder to absolute mode

  M107              ;start with the fan off

  M117 Preparing    ;write Preparing

  M190 S{print_bed_temperature}              ;wait for the bed to reach desired temperature

  M109 S180         ;wait for the extruder to reach 180C

  G28               ;home all axes

  M203 Z4           ;slow Z speed down for greater accuracy when probing

  G29 O             ;run auto bed leveling procedure IF leveling not active already

  ;M500              ;optionally save the mesh

  M203 Z7           ;pick up z speed again for printing

  G28 X             ;home x to get as far from the plate as possible

  M420 S1           ;(re) enable bed leveling to make iron-sure

  G0 Y0 F5000       ;position Y in front

  G0 Z15 F3000      ;position Z

  M109 S{print_temperature}             ;wait for the extruder to reach desired temperature

  M300 S440 P300    ;optionally, play a tone

  ; M0 Ready! Click to start ; optionally, stop and wait for user to continue

  M420 S1           ;(re) enable bed leveling to make iron-sure

  M117 Print starting   ;write Print starting

  ;================ ;PRINT:LINE start

  G90               ;absolute positioning

  G92 E0            ;reset the extruder position

  M420 S1           ;(re) enable bed leveling to make iron-sure

  G0 Z0             ;get Z down

  M83               ;relative extrusion mode

  M420 S1           ;(re) enable bed leveling to make iron-sure

  G1 E22 F300       ;extrude __mm of feed stock

  G1 E18 F250       ;extrude __mm of feed stock

  G1 E10 F250       ;extrude __mm of feed stock

  G4 S2             ;pause for ooze

  M400              ;make sure all is finished

  M420 S1           ;(re) enable bed leveling to make iron-sure

  G0 F500 X3 Y0 Z0.6;get to the start of the LINE

  G1 E2 F300        ;extrude __mm of feed stock

  G1 F1000 X104 E10  ;print a thick LINE extruding __mm along the way

  M82               ;absolute extrusion mode

  G92 E0            ;reset the extruder position

  ;---------------------------------------------

  ; ; ; Jellybox Printer Start Script End ; ; ;

  ;_____________________________________________'
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;M190 S{print_bed_temperature} ;Uncomment to add your own bed temperature line

  ;M104 S{print_temperature} ;Uncomment to add your own temperature line

  ;M109 T1 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T0 S{print_temperature} ;Uncomment to add your own temperature line

  G21        ;metric values

  G90        ;absolute positioning

  M107       ;start with the fan off

  G28 X0 Y0  ;move X/Y to min endstops

  G28 Z0     ;move Z to min endstops

  G1 Z15.0 F{travel_speed} ;move the platform down 15mm

  T1                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T0                      ;Switch to the first extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F{travel_speed}

  ;Put printing message on LCD screen

  M117 Printing...'
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;M190 S{print_bed_temperature} ;Uncomment to add your own bed temperature line

  ;M104 S{print_temperature} ;Uncomment to add your own temperature line

  ;M109 T1 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T0 S{print_temperature} ;Uncomment to add your own temperature line

  G21        ;metric values

  G90        ;absolute positioning

  M107       ;start with the fan off

  G28 X0 Y0  ;move X/Y to min endstops

  G28 Z0     ;move Z to min endstops

  G1 Z15.0 F{travel_speed} ;move the platform down 15mm

  T2                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T1                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T0                      ;Switch to the first extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F{travel_speed}

  ;Put printing message on LCD screen

  M117 Printing...'
- ';Sliced at: {day} {date} {time}

  ;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}

  ;Print time: {print_time}

  ;Filament used: {filament_amount}m {filament_weight}g

  ;Filament cost: {filament_cost}

  ;M190 S{print_bed_temperature} ;Uncomment to add your own bed temperature line

  ;M104 S{print_temperature} ;Uncomment to add your own temperature line

  ;M109 T2 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T1 S{print_temperature2} ;Uncomment to add your own temperature line

  ;M109 T0 S{print_temperature} ;Uncomment to add your own temperature line

  G21        ;metric values

  G90        ;absolute positioning

  M107       ;start with the fan off

  G28 X0 Y0  ;move X/Y to min endstops

  G28 Z0     ;move Z to min endstops

  G1 Z15.0 F{travel_speed} ;move the platform down 15mm

  T3                      ;Switch to the 4th extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T2                      ;Switch to the 3th extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T1                      ;Switch to the 2nd extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F200 E-{retraction_dual_amount}

  T0                      ;Switch to the first extruder

  G92 E0                  ;zero the extruded length

  G1 F200 E10             ;extrude 10mm of feed stock

  G92 E0                  ;zero the extruded length again

  G1 F{travel_speed}

  ;Put printing message on LCD screen

  M117 Printing...'
support: none
support_angle: 60
support_dual_extrusion: both
support_fill_rate: 15
support_type: lines
support_xy_distance: 0.7
support_z_distance: 0.2
travel_speed: 120
wall_thickness: 0.8
wipe_tower: false
wipe_tower_volume: 15
