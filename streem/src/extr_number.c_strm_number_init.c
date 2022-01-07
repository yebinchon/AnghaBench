
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int num_bar ;
 int num_div ;
 int num_ge ;
 int num_gt ;
 int num_le ;
 int num_lt ;
 int num_minus ;
 int num_mod ;
 int num_mult ;
 int num_number ;
 int num_plus ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_new (int *,char*) ;
 int * strm_ns_number ;
 int strm_var_def (int *,char*,int ) ;

void
strm_number_init(strm_state* state)
{
  strm_ns_number = strm_ns_new(((void*)0), "number");
  strm_var_def(strm_ns_number, "+", strm_cfunc_value(num_plus));
  strm_var_def(strm_ns_number, "-", strm_cfunc_value(num_minus));
  strm_var_def(strm_ns_number, "*", strm_cfunc_value(num_mult));
  strm_var_def(strm_ns_number, "/", strm_cfunc_value(num_div));
  strm_var_def(strm_ns_number, "%", strm_cfunc_value(num_mod));
  strm_var_def(strm_ns_number, "|", strm_cfunc_value(num_bar));
  strm_var_def(strm_ns_number, "<", strm_cfunc_value(num_lt));
  strm_var_def(strm_ns_number, "<=", strm_cfunc_value(num_le));
  strm_var_def(strm_ns_number, ">", strm_cfunc_value(num_gt));
  strm_var_def(strm_ns_number, ">=", strm_cfunc_value(num_ge));
  strm_var_def(state, "number", strm_cfunc_value(num_number));
}
