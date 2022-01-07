
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {TYPE_5__* data; int * action; } ;
typedef TYPE_3__ ngx_log_t ;
struct TYPE_11__ {int * (* log_handler ) (TYPE_4__*,int ,int *,size_t) ;} ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_12__ {TYPE_2__* connection; int current_request; TYPE_4__* request; } ;
typedef TYPE_5__ ngx_http_log_ctx_t ;
struct TYPE_9__ {TYPE_1__* listening; int addr_text; } ;
struct TYPE_8__ {int addr_text; } ;


 int * ngx_snprintf (int *,size_t,char*,int *) ;
 int * stub1 (TYPE_4__*,int ,int *,size_t) ;

__attribute__((used)) static u_char *
ngx_http_log_error(ngx_log_t *log, u_char *buf, size_t len)
{
    u_char *p;
    ngx_http_request_t *r;
    ngx_http_log_ctx_t *ctx;

    if (log->action) {
        p = ngx_snprintf(buf, len, " while %s", log->action);
        len -= p - buf;
        buf = p;
    }

    ctx = log->data;

    p = ngx_snprintf(buf, len, ", client: %V", &ctx->connection->addr_text);
    len -= p - buf;

    r = ctx->request;

    if (r) {
        return r->log_handler(r, ctx->current_request, p, len);

    } else {
        p = ngx_snprintf(p, len, ", server: %V",
                         &ctx->connection->listening->addr_text);
    }

    return p;
}
