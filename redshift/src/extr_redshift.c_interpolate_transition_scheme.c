
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int night; int day; } ;
typedef TYPE_1__ transition_scheme_t ;
typedef int color_setting_t ;


 double CLAMP (double,double,double) ;
 int interpolate_color_settings (int const*,int const*,double,int *) ;

__attribute__((used)) static void
interpolate_transition_scheme(
 const transition_scheme_t *transition,
 double alpha,
 color_setting_t *result)
{
 const color_setting_t *day = &transition->day;
 const color_setting_t *night = &transition->night;

 alpha = CLAMP(0.0, alpha, 1.0);
 interpolate_color_settings(night, day, alpha, result);
}
