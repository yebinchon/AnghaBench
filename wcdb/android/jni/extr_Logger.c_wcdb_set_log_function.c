
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wcdb_logfunc_t ;


 scalar_t__ dummy_log ;
 scalar_t__ g_logfunc ;

void wcdb_set_log_function(wcdb_logfunc_t func)
{
    if (!func)
        func = dummy_log;
    g_logfunc = func;
}
