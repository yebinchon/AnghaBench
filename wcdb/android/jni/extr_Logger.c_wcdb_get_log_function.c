
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wcdb_logfunc_t ;


 int g_logfunc ;

wcdb_logfunc_t wcdb_get_log_function()
{
    return g_logfunc;
}
