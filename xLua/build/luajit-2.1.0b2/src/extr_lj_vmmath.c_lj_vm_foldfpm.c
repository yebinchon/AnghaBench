
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double cos (double) ;
 double exp (double) ;
 double lj_vm_ceil (double) ;
 double lj_vm_exp2 (double) ;
 double lj_vm_floor (double) ;
 double lj_vm_log2 (double) ;
 double lj_vm_trunc (double) ;
 double log (double) ;
 double log10 (double) ;
 int lua_assert (int ) ;
 double sin (double) ;
 double sqrt (double) ;
 double tan (double) ;

double lj_vm_foldfpm(double x, int fpm)
{
  switch (fpm) {
  case 135: return lj_vm_floor(x);
  case 139: return lj_vm_ceil(x);
  case 128: return lj_vm_trunc(x);
  case 130: return sqrt(x);
  case 137: return exp(x);
  case 136: return lj_vm_exp2(x);
  case 134: return log(x);
  case 132: return lj_vm_log2(x);
  case 133: return log10(x);
  case 131: return sin(x);
  case 138: return cos(x);
  case 129: return tan(x);
  default: lua_assert(0);
  }
  return 0;
}
