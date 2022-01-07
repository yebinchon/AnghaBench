
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int exec_concat ;
 int exec_zip ;
 int strm_cfunc_value (int ) ;
 int strm_var_def (int *,char*,int ) ;

void
strm_latch_init(strm_state* state)
{
  strm_var_def(state, "&", strm_cfunc_value(exec_zip));
  strm_var_def(state, "zip", strm_cfunc_value(exec_zip));
  strm_var_def(state, "concat", strm_cfunc_value(exec_concat));
}
