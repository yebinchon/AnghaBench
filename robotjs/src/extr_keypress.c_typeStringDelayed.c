
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEADBEEF_UNIFORM (double,double) ;
 int microsleep (scalar_t__) ;
 int tapUniKey (int ) ;

void typeStringDelayed(const char *str, const unsigned cpm)
{

 const double cps = (double)cpm / 60.0;


 const double mspc = (cps == 0.0) ? 0.0 : 1000.0 / cps;

 while (*str != '\0') {
  tapUniKey(*str++);
  microsleep(mspc + (DEADBEEF_UNIFORM(0.0, 62.5)));
 }
}
