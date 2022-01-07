
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lua_Number ;
typedef int jit_State ;
typedef int cTValue ;
typedef int IRType ;


 size_t FORL_IDX ;
 size_t FORL_STEP ;
 size_t FORL_STOP ;
 int IRT_INT ;
 int IRT_NUM ;
 int lua_assert (int) ;
 scalar_t__ narrow_forl (int *,int *) ;
 scalar_t__ numberVnum (int *) ;
 scalar_t__ tvisnumber (int *) ;

IRType lj_opt_narrow_forl(jit_State *J, cTValue *tv)
{
  lua_assert(tvisnumber(&tv[FORL_IDX]) &&
      tvisnumber(&tv[FORL_STOP]) &&
      tvisnumber(&tv[FORL_STEP]));

  if (narrow_forl(J, &tv[FORL_IDX]) &&
      narrow_forl(J, &tv[FORL_STOP]) &&
      narrow_forl(J, &tv[FORL_STEP])) {

    lua_Number step = numberVnum(&tv[FORL_STEP]);
    lua_Number sum = numberVnum(&tv[FORL_STOP]) + step;
    if (0 <= step ? (sum <= 2147483647.0) : (sum >= -2147483648.0))
      return IRT_INT;
  }
  return IRT_NUM;
}
