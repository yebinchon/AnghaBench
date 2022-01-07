
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int exec_rand ;
 int exec_rnorm ;
 int exec_sample ;
 int rand_seed ;
 int strm_cfunc_value (int ) ;
 int strm_var_def (int *,char*,int ) ;

void
strm_rand_init(strm_state* state)
{
  strm_var_def(state, "rand_seed", strm_cfunc_value(rand_seed));
  strm_var_def(state, "rand", strm_cfunc_value(exec_rand));
  strm_var_def(state, "rand_norm", strm_cfunc_value(exec_rnorm));
  strm_var_def(state, "sample", strm_cfunc_value(exec_sample));
}
