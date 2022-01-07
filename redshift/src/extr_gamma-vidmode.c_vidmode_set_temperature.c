
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ramp_size; int screen_num; int display; int saved_ramps; } ;
typedef TYPE_1__ vidmode_state_t ;
typedef double uint16_t ;
typedef int color_setting_t ;


 int UINT16_MAX ;
 int XF86VidModeSetGammaRamp (int ,int ,double,double*,double*,double*) ;
 char* _ (char*) ;
 int colorramp_fill (double*,double*,double*,double,int const*) ;
 int fprintf (int ,char*,char*) ;
 int free (double*) ;
 double* malloc (int) ;
 int memcpy (double*,int ,int) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static int
vidmode_set_temperature(
 vidmode_state_t *state, const color_setting_t *setting, int preserve)
{
 int r;


 uint16_t *gamma_ramps = malloc(3*state->ramp_size*sizeof(uint16_t));
 if (gamma_ramps == ((void*)0)) {
  perror("malloc");
  return -1;
 }

 uint16_t *gamma_r = &gamma_ramps[0*state->ramp_size];
 uint16_t *gamma_g = &gamma_ramps[1*state->ramp_size];
 uint16_t *gamma_b = &gamma_ramps[2*state->ramp_size];

 if (preserve) {

  memcpy(gamma_ramps, state->saved_ramps,
         3*state->ramp_size*sizeof(uint16_t));
 } else {

  for (int i = 0; i < state->ramp_size; i++) {
   uint16_t value = (double)i/state->ramp_size *
    (UINT16_MAX+1);
   gamma_r[i] = value;
   gamma_g[i] = value;
   gamma_b[i] = value;
  }
 }

 colorramp_fill(gamma_r, gamma_g, gamma_b, state->ramp_size,
         setting);


 r = XF86VidModeSetGammaRamp(state->display, state->screen_num,
        state->ramp_size, gamma_r, gamma_g,
        gamma_b);
 if (!r) {
  fprintf(stderr, _("X request failed: %s\n"),
   "XF86VidModeSetGammaRamp");
  free(gamma_ramps);
  return -1;
 }

 free(gamma_ramps);

 return 0;
}
