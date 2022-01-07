
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int temperature; } ;
typedef TYPE_1__ color_setting_t ;


 char* _ (char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
gamma_dummy_set_temperature(
 void *state, const color_setting_t *setting, int preserve)
{
 printf(_("Temperature: %i\n"), setting->temperature);
 return 0;
}
