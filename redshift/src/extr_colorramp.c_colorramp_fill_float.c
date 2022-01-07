
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int temperature; } ;
typedef TYPE_1__ color_setting_t ;


 float F (double,int) ;
 int * blackbody_color ;
 int interpolate_color (float,int *,int *,float*) ;

void
colorramp_fill_float(float *gamma_r, float *gamma_g, float *gamma_b,
       int size, const color_setting_t *setting)
{

 float white_point[3];
 float alpha = (setting->temperature % 100) / 100.0;
 int temp_index = ((setting->temperature - 1000) / 100)*3;
 interpolate_color(alpha, &blackbody_color[temp_index],
     &blackbody_color[temp_index+3], white_point);

 for (int i = 0; i < size; i++) {
  gamma_r[i] = F((double)gamma_r[i], 0);
  gamma_g[i] = F((double)gamma_g[i], 1);
  gamma_b[i] = F((double)gamma_b[i], 2);
 }
}
