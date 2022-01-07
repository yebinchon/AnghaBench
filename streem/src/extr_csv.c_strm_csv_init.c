
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int csv ;
 int ltsv ;
 int str_number ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_string ;
 int strm_var_def (int *,char*,int ) ;
 int tsv ;

void
strm_csv_init(strm_state* state)
{
  strm_var_def(state, "csv", strm_cfunc_value(csv));
  strm_var_def(state, "tsv", strm_cfunc_value(tsv));
  strm_var_def(state, "ltsv", strm_cfunc_value(ltsv));

  strm_var_def(strm_ns_string, "number", strm_cfunc_value(str_number));
}
