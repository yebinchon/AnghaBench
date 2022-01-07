
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int M_E ;
 int M_PI ;
 int math_ceil ;
 int math_cos ;
 int math_floor ;
 int math_pow ;
 int math_round ;
 int math_sin ;
 int math_sqrt ;
 int math_tan ;
 int math_trunc ;
 int strm_cfunc_value (int ) ;
 int strm_float_value (int ) ;
 int strm_var_def (int *,char*,int ) ;

void
strm_math_init(strm_state* state)
{
  strm_var_def(state, "PI", strm_float_value(M_PI));
  strm_var_def(state, "E", strm_float_value(M_E));
  strm_var_def(state, "sqrt", strm_cfunc_value(math_sqrt));
  strm_var_def(state, "sin", strm_cfunc_value(math_sin));
  strm_var_def(state, "cos", strm_cfunc_value(math_cos));
  strm_var_def(state, "tan", strm_cfunc_value(math_tan));
  strm_var_def(state, "pow", strm_cfunc_value(math_pow));
  strm_var_def(state, "round", strm_cfunc_value(math_round));
  strm_var_def(state, "ceil", strm_cfunc_value(math_ceil));
  strm_var_def(state, "floor", strm_cfunc_value(math_floor));
  strm_var_def(state, "trunc", strm_cfunc_value(math_trunc));
  strm_var_def(state, "int", strm_cfunc_value(math_trunc));
}
