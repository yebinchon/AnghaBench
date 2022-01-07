
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_msec_t ;
struct TYPE_11__ {int data; int len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_12__ {scalar_t__ method; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef int ngx_http_proxy_connect_ctx_t ;
struct TYPE_9__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_CONNECT ;
 int NGX_LOG_ERR ;
 int * ngx_http_get_module_ctx (TYPE_4__*,int ) ;
 int ngx_http_proxy_connect_module ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 scalar_t__ ngx_parse_time (TYPE_2__*,int ) ;

__attribute__((used)) static void
ngx_http_proxy_connect_variable_set_time(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_str_t s;
    ngx_msec_t *msp, ms;
    ngx_http_proxy_connect_ctx_t *ctx;

    if (r->method != NGX_HTTP_CONNECT) {
        return;
    }

    s.len = v->len;
    s.data = v->data;

    ms = ngx_parse_time(&s, 0);

    if (ms == (ngx_msec_t) NGX_ERROR) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "proxy_connect: invalid msec \"%V\" (ctx offset=%ui)",
                      &s, data);
        return;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_connect_module);

    if (ctx == ((void*)0)) {




        return;
    }

    msp = (ngx_msec_t *) ((char *) ctx + data);

    *msp = ms;
}
