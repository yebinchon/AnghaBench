
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef int ngx_int_t ;
struct TYPE_2__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 TYPE_1__* ngx_cycle ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_dubbo_filter(void *data, ssize_t bytes)
{
    ngx_log_error(NGX_LOG_ERR, ngx_cycle->log, 0, "dubbo: dubbo filter not used");

    return NGX_ERROR;
}
