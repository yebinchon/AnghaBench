
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int ary_each ;
 int ary_flatmap ;
 int ary_map ;
 int exec_consec ;
 int exec_count ;
 int exec_cycle ;
 int exec_drop ;
 int exec_each ;
 int exec_filter ;
 int exec_flatmap ;
 int exec_map ;
 int exec_max ;
 int exec_min ;
 int exec_rbk ;
 int exec_reduce ;
 int exec_repeat ;
 int exec_seq ;
 int exec_slice ;
 int exec_take ;
 int exec_uniq ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_array ;
 int strm_stat_init (int *) ;
 int strm_var_def (int *,char*,int ) ;

void
strm_iter_init(strm_state* state)
{
  strm_var_def(state, "seq", strm_cfunc_value(exec_seq));
  strm_var_def(state, "repeat", strm_cfunc_value(exec_repeat));
  strm_var_def(state, "cycle", strm_cfunc_value(exec_cycle));
  strm_var_def(state, "each", strm_cfunc_value(exec_each));
  strm_var_def(state, "map", strm_cfunc_value(exec_map));
  strm_var_def(state, "flatmap", strm_cfunc_value(exec_flatmap));
  strm_var_def(state, "filter", strm_cfunc_value(exec_filter));
  strm_var_def(state, "count", strm_cfunc_value(exec_count));
  strm_var_def(state, "min", strm_cfunc_value(exec_min));
  strm_var_def(state, "max", strm_cfunc_value(exec_max));
  strm_var_def(state, "reduce", strm_cfunc_value(exec_reduce));
  strm_var_def(state, "reduce_by_key", strm_cfunc_value(exec_rbk));

  strm_var_def(state, "slice", strm_cfunc_value(exec_slice));
  strm_var_def(state, "consec", strm_cfunc_value(exec_consec));
  strm_var_def(state, "take", strm_cfunc_value(exec_take));
  strm_var_def(state, "drop", strm_cfunc_value(exec_drop));
  strm_var_def(state, "uniq", strm_cfunc_value(exec_uniq));

  strm_var_def(strm_ns_array, "each", strm_cfunc_value(ary_each));
  strm_var_def(strm_ns_array, "map", strm_cfunc_value(ary_map));
  strm_var_def(strm_ns_array, "flatmap", strm_cfunc_value(ary_flatmap));
  strm_stat_init(state);
}
