
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int ary_avg ;
 int ary_correl ;
 int ary_stdev ;
 int ary_sum ;
 int ary_var ;
 int exec_avg ;
 int exec_correl ;
 int exec_mean_stdev ;
 int exec_mean_variance ;
 int exec_mvavg ;
 int exec_stdev ;
 int exec_sum ;
 int exec_variance ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_array ;
 int strm_rand_init (int *) ;
 int strm_sort_init (int *) ;
 int strm_var_def (int *,char*,int ) ;

void
strm_stat_init(strm_state* state)
{
  strm_var_def(state, "sum", strm_cfunc_value(exec_sum));
  strm_var_def(state, "average", strm_cfunc_value(exec_avg));
  strm_var_def(state, "mean", strm_cfunc_value(exec_avg));
  strm_var_def(state, "moving_average", strm_cfunc_value(exec_mvavg));
  strm_var_def(state, "rolling_mean", strm_cfunc_value(exec_mvavg));
  strm_var_def(state, "stdev", strm_cfunc_value(exec_stdev));
  strm_var_def(state, "variance", strm_cfunc_value(exec_variance));
  strm_var_def(state, "mean_stdev", strm_cfunc_value(exec_mean_stdev));
  strm_var_def(state, "mean_variance", strm_cfunc_value(exec_mean_variance));
  strm_var_def(state, "correl", strm_cfunc_value(exec_correl));

  strm_var_def(strm_ns_array, "sum", strm_cfunc_value(ary_sum));
  strm_var_def(strm_ns_array, "average", strm_cfunc_value(ary_avg));
  strm_var_def(strm_ns_array, "stdev", strm_cfunc_value(ary_stdev));
  strm_var_def(strm_ns_array, "variance", strm_cfunc_value(ary_var));
  strm_var_def(strm_ns_array, "correl", strm_cfunc_value(ary_correl));

  strm_rand_init(state);
  strm_sort_init(state);
}
