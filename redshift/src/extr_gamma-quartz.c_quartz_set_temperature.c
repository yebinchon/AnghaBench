
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int display_count; } ;
typedef TYPE_1__ quartz_state_t ;
typedef int color_setting_t ;


 int quartz_set_temperature_for_display (TYPE_1__*,int,int const*,int) ;

__attribute__((used)) static int
quartz_set_temperature(
 quartz_state_t *state, const color_setting_t *setting, int preserve)
{
 for (int i = 0; i < state->display_count; i++) {
  quartz_set_temperature_for_display(
   state, i, setting, preserve);
 }

 return 0;
}
