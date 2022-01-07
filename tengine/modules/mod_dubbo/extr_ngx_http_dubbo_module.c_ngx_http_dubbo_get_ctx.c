
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int peer; } ;
typedef TYPE_2__ ngx_http_upstream_t ;
struct TYPE_16__ {TYPE_2__* upstream; TYPE_1__* connection; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int * connection; TYPE_3__* request; } ;
typedef TYPE_4__ ngx_http_dubbo_ctx_t ;
struct TYPE_14__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_dubbo_get_connection_data (TYPE_3__*,TYPE_4__*,int *) ;
 int ngx_http_dubbo_module ;
 TYPE_4__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_set_ctx (TYPE_3__*,TYPE_4__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_http_dubbo_ctx_t*
ngx_http_dubbo_get_ctx(ngx_http_request_t *r)
{
    ngx_http_dubbo_ctx_t *ctx;
    ngx_http_upstream_t *u;

    ctx = ngx_http_get_module_ctx(r, ngx_http_dubbo_module);

    if (ctx == ((void*)0)) {

        ctx = ngx_pcalloc(r->pool, sizeof(ngx_http_dubbo_ctx_t));
        if (ctx == ((void*)0)) {
            return ((void*)0);
        }

        ctx->request = r;

        ngx_http_set_ctx(r, ctx, ngx_http_dubbo_module);

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                "create dubbo ctx on create request, maybe fake_r");
    }

    if (ctx->connection == ((void*)0)) {
        u = r->upstream;

        if (ngx_http_dubbo_get_connection_data(r, ctx, &u->peer) != NGX_OK) {
            return ((void*)0);
        }
    }

    return ctx;
}
