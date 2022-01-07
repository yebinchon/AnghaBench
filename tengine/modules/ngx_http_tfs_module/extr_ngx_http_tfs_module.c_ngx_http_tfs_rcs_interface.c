
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int sin_addr; } ;
struct TYPE_9__ {int local_addr_text; TYPE_6__ local_addr; } ;
typedef TYPE_2__ ngx_http_tfs_upstream_t ;
struct TYPE_10__ {TYPE_1__* args; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_8__ {int nelts; int * elts; } ;


 int AF_INET ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 scalar_t__ NGX_ERROR ;
 int NGX_INET_ADDRSTRLEN ;
 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_3__*,int ,char*,...) ;
 scalar_t__ ngx_http_tfs_get_local_ip (int ,TYPE_6__*) ;
 int ngx_inet_ntop (int ,int *,int ,int ) ;

__attribute__((used)) static char *
ngx_http_tfs_rcs_interface(ngx_conf_t *cf, ngx_http_tfs_upstream_t *tu)
{
    ngx_int_t rc;
    ngx_str_t *value;

    if (cf->args->nelts != 2) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                           "invalid number of arguments in "
                           "\"rcs_interface\" directive");
        return NGX_CONF_ERROR;
    }

    value = cf->args->elts;
    rc = ngx_http_tfs_get_local_ip(value[1], &tu->local_addr);
    if (rc == NGX_ERROR) {
        ngx_conf_log_error(NGX_LOG_EMERG, cf, 0, "device is invalid(%V)",
                           &value[1]);
        return NGX_CONF_ERROR;
    }

    ngx_inet_ntop(AF_INET, &tu->local_addr.sin_addr, tu->local_addr_text,
                  NGX_INET_ADDRSTRLEN);
    return NGX_CONF_OK;
}
