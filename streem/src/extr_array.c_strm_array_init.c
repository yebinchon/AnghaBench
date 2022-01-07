
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int ary_length ;
 int ary_max ;
 int ary_min ;
 int ary_reverse ;
 int strm_cfunc_value (int ) ;
 int strm_ns_array ;
 int strm_ns_new (int *,char*) ;
 int strm_var_def (int ,char*,int ) ;

void
strm_array_init(strm_state* state)
{
  strm_ns_array = strm_ns_new(((void*)0), "array");
  strm_var_def(strm_ns_array, "length", strm_cfunc_value(ary_length));
  strm_var_def(strm_ns_array, "reverse", strm_cfunc_value(ary_reverse));
  strm_var_def(strm_ns_array, "min", strm_cfunc_value(ary_min));
  strm_var_def(strm_ns_array, "max", strm_cfunc_value(ary_max));
}
