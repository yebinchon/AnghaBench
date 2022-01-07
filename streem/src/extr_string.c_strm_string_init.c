
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int str_chars ;
 int str_length ;
 int str_plus ;
 int str_split ;
 int strm_cfunc_value (int ) ;
 int strm_ns_new (int *,char*) ;
 int strm_ns_string ;
 int strm_var_def (int ,char*,int ) ;

void
strm_string_init(strm_state* state)
{
  strm_ns_string = strm_ns_new(((void*)0), "string");
  strm_var_def(strm_ns_string, "length", strm_cfunc_value(str_length));
  strm_var_def(strm_ns_string, "split", strm_cfunc_value(str_split));
  strm_var_def(strm_ns_string, "+", strm_cfunc_value(str_plus));
  strm_var_def(strm_ns_string, "chars", strm_cfunc_value(str_chars));
}
