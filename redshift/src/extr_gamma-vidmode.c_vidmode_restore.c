
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ramp_size; int screen_num; int display; int * saved_ramps; } ;
typedef TYPE_1__ vidmode_state_t ;
typedef int uint16_t ;


 int XF86VidModeSetGammaRamp (int ,int ,int,int *,int *,int *) ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
vidmode_restore(vidmode_state_t *state)
{
 uint16_t *gamma_r = &state->saved_ramps[0*state->ramp_size];
 uint16_t *gamma_g = &state->saved_ramps[1*state->ramp_size];
 uint16_t *gamma_b = &state->saved_ramps[2*state->ramp_size];


 int r = XF86VidModeSetGammaRamp(state->display, state->screen_num,
     state->ramp_size, gamma_r, gamma_g,
     gamma_b);
 if (!r) {
  fprintf(stderr, _("X request failed: %s\n"),
   "XF86VidModeSetGammaRamp");
 }
}
