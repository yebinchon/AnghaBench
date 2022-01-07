
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {scalar_t__ pool_size; } ;
typedef TYPE_2__ ngx_http_upstream_keepalive_srv_conf_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_atoi (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_keepalive_param_psize(ngx_conf_t *cf, void *conf,
    ngx_str_t *val)
{
    ngx_int_t n;

    ngx_http_upstream_keepalive_srv_conf_t *kcf = conf;

    n = ngx_atoi(val->data, val->len);
    kcf->pool_size = n;

    return n == NGX_ERROR ? NGX_ERROR : NGX_OK;
}
