
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ crtc_num_count; int crtc_count; int* crtc_num; } ;
typedef TYPE_1__ randr_state_t ;
typedef int color_setting_t ;


 int randr_set_temperature_for_crtc (TYPE_1__*,int,int const*,int) ;

__attribute__((used)) static int
randr_set_temperature(
 randr_state_t *state, const color_setting_t *setting, int preserve)
{
 int r;



 if (state->crtc_num_count == 0) {
  for (int i = 0; i < state->crtc_count; i++) {
   r = randr_set_temperature_for_crtc(
    state, i, setting, preserve);
   if (r < 0) return -1;
  }
 } else {
  for (int i = 0; i < state->crtc_num_count; ++i) {
   r = randr_set_temperature_for_crtc(
    state, state->crtc_num[i], setting, preserve);
   if (r < 0) return -1;
  }
 }

 return 0;
}
