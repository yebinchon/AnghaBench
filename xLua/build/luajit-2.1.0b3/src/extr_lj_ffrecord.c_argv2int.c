
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int int32_t ;
typedef int TValue ;


 int LJ_TRERR_BADTYPE ;
 int intV (int *) ;
 int lj_num2int (int ) ;
 int lj_strscan_numberobj (int *) ;
 int lj_trace_err (int *,int ) ;
 int numV (int *) ;
 scalar_t__ tvisint (int *) ;

__attribute__((used)) static int32_t argv2int(jit_State *J, TValue *o)
{
  if (!lj_strscan_numberobj(o))
    lj_trace_err(J, LJ_TRERR_BADTYPE);
  return tvisint(o) ? intV(o) : lj_num2int(numV(o));
}
