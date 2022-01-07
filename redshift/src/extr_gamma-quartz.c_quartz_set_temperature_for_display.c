
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* displays; } ;
typedef TYPE_2__ quartz_state_t ;
typedef int color_setting_t ;
struct TYPE_4__ {int ramp_size; int saved_ramps; int display; } ;
typedef scalar_t__ CGError ;
typedef int CGDirectDisplayID ;


 scalar_t__ CGSetDisplayTransferByTable (int ,int,float*,float*,float*) ;
 int colorramp_fill_float (float*,float*,float*,int,int const*) ;
 int free (float*) ;
 scalar_t__ kCGErrorSuccess ;
 float* malloc (int) ;
 int memcpy (float*,int ,int) ;
 int perror (char*) ;

__attribute__((used)) static void
quartz_set_temperature_for_display(
 quartz_state_t *state, int display_index,
 const color_setting_t *setting, int preserve)
{
 CGDirectDisplayID display = state->displays[display_index].display;
 uint32_t ramp_size = state->displays[display_index].ramp_size;


 float *gamma_ramps = malloc(3*ramp_size*sizeof(float));
 if (gamma_ramps == ((void*)0)) {
  perror("malloc");
  return;
 }

 float *gamma_r = &gamma_ramps[0*ramp_size];
 float *gamma_g = &gamma_ramps[1*ramp_size];
 float *gamma_b = &gamma_ramps[2*ramp_size];

 if (preserve) {

  memcpy(gamma_ramps, state->displays[display_index].saved_ramps,
         3*ramp_size*sizeof(float));
 } else {

  for (int i = 0; i < ramp_size; i++) {
   float value = (double)i/ramp_size;
   gamma_r[i] = value;
   gamma_g[i] = value;
   gamma_b[i] = value;
  }
 }

 colorramp_fill_float(gamma_r, gamma_g, gamma_b, ramp_size,
        setting);

 CGError error =
  CGSetDisplayTransferByTable(display, ramp_size,
         gamma_r, gamma_g, gamma_b);
 if (error != kCGErrorSuccess) {
  free(gamma_ramps);
  return;
 }

 free(gamma_ramps);
}
