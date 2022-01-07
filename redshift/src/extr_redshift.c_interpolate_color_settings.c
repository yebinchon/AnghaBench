
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double temperature; double brightness; double* gamma; } ;
typedef TYPE_1__ color_setting_t ;


 double CLAMP (double,double,double) ;

__attribute__((used)) static void
interpolate_color_settings(
 const color_setting_t *first,
 const color_setting_t *second,
 double alpha,
 color_setting_t *result)
{
 alpha = CLAMP(0.0, alpha, 1.0);

 result->temperature = (1.0-alpha)*first->temperature +
  alpha*second->temperature;
 result->brightness = (1.0-alpha)*first->brightness +
  alpha*second->brightness;
 for (int i = 0; i < 3; i++) {
  result->gamma[i] = (1.0-alpha)*first->gamma[i] +
   alpha*second->gamma[i];
 }
}
