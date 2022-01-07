
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* job_entrypoint_function_name ;

void
ts_bgw_job_set_job_entrypoint_function_name(char *func_name)
{
 job_entrypoint_function_name = func_name;
}
