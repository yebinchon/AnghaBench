
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int* loads; } ;
typedef int ngx_log_t ;
typedef size_t ngx_int_t ;


 size_t NGX_ERROR ;
 int NGX_LOG_EMERG ;
 size_t NGX_OK ;
 int getloadavg (double*,size_t) ;
 int ngx_log_error (int ,int *,int ,char*) ;
 scalar_t__ sysinfo (struct sysinfo*) ;

ngx_int_t
ngx_getloadavg(ngx_int_t avg[], ngx_int_t nelem, ngx_log_t *log)
{
    ngx_log_error(NGX_LOG_EMERG, log, 0,
                  "getloadavg is unsupported under current os");

    return NGX_ERROR;

}
