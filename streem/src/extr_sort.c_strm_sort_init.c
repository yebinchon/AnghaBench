
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int ary_median ;
 int ary_sort ;
 int ary_sortby ;
 int exec_cmp ;
 int exec_median ;
 int exec_sort ;
 int exec_sortby ;
 int str_ge ;
 int str_gt ;
 int str_le ;
 int str_lt ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_array ;
 int * strm_ns_string ;
 int strm_var_def (int *,char*,int ) ;

void
strm_sort_init(strm_state* state)
{
  strm_var_def(strm_ns_array, "sort", strm_cfunc_value(ary_sort));
  strm_var_def(strm_ns_array, "sort_by", strm_cfunc_value(ary_sortby));
  strm_var_def(strm_ns_array, "median", strm_cfunc_value(ary_median));
  strm_var_def(state, "cmp", strm_cfunc_value(exec_cmp));
  strm_var_def(state, "sort", strm_cfunc_value(exec_sort));
  strm_var_def(state, "sort_by", strm_cfunc_value(exec_sortby));
  strm_var_def(state, "median", strm_cfunc_value(exec_median));

  strm_var_def(strm_ns_string, "<", strm_cfunc_value(str_lt));
  strm_var_def(strm_ns_string, "<=", strm_cfunc_value(str_le));
  strm_var_def(strm_ns_string, ">", strm_cfunc_value(str_gt));
  strm_var_def(strm_ns_string, ">=", strm_cfunc_value(str_ge));
}
