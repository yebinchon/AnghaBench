
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_str_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef int ngx_cpuinfo_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int ngx_log_error (int ,int *,int ,char*) ;

ngx_int_t
ngx_getcpuinfo(ngx_str_t *cpunumber, ngx_cpuinfo_t *cpuinfo, ngx_log_t *log)
{
    ngx_log_error(NGX_LOG_EMERG, log, 0,
                  "ngx_getcpuinfo is unsupported under current os");

    return NGX_ERROR;
}
