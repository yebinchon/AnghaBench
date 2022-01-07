
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_state ;


 int * ns_time ;
 int strm_cfunc_value (int ) ;
 int * strm_ns_new (int *,char*) ;
 int strm_var_def (int *,char*,int ) ;
 int time_day ;
 int time_hour ;
 int time_min ;
 int time_minus ;
 int time_month ;
 int time_nanosec ;
 int time_now ;
 int time_num ;
 int time_plus ;
 int time_sec ;
 int time_str ;
 int time_time ;
 int time_weekday ;
 int time_year ;

void
strm_time_init(strm_state* state)
{
  strm_var_def(state, "now", strm_cfunc_value(time_now));
  strm_var_def(state, "time", strm_cfunc_value(time_time));

  ns_time = strm_ns_new(((void*)0), "time");
  strm_var_def(ns_time, "+", strm_cfunc_value(time_plus));
  strm_var_def(ns_time, "-", strm_cfunc_value(time_minus));
  strm_var_def(ns_time, "string", strm_cfunc_value(time_str));
  strm_var_def(ns_time, "number", strm_cfunc_value(time_num));
  strm_var_def(ns_time, "year", strm_cfunc_value(time_year));
  strm_var_def(ns_time, "month", strm_cfunc_value(time_month));
  strm_var_def(ns_time, "day", strm_cfunc_value(time_day));
  strm_var_def(ns_time, "hour", strm_cfunc_value(time_hour));
  strm_var_def(ns_time, "minute", strm_cfunc_value(time_min));
  strm_var_def(ns_time, "second", strm_cfunc_value(time_sec));
  strm_var_def(ns_time, "nanosecond", strm_cfunc_value(time_nanosec));
  strm_var_def(ns_time, "weekday", strm_cfunc_value(time_weekday));
}
