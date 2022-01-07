
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* gamma; double brightness; int temperature; } ;
typedef TYPE_1__ color_setting_t ;


 int NEUTRAL_TEMP ;

__attribute__((used)) static void
color_setting_reset(color_setting_t *color)
{
 color->temperature = NEUTRAL_TEMP;
 color->gamma[0] = 1.0;
 color->gamma[1] = 1.0;
 color->gamma[2] = 1.0;
 color->brightness = 1.0;
}
