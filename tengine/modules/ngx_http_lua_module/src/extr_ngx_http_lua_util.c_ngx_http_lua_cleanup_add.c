
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* cleanup; TYPE_1__* connection; struct TYPE_14__* main; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {TYPE_4__* free_cleanup; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_16__ {struct TYPE_16__* next; int * handler; } ;
typedef TYPE_4__ ngx_http_cleanup_t ;
struct TYPE_13__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,TYPE_4__*) ;
 TYPE_4__* ngx_http_cleanup_add (TYPE_2__*,size_t) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;

ngx_http_cleanup_t *
ngx_http_lua_cleanup_add(ngx_http_request_t *r, size_t size)
{
    ngx_http_cleanup_t *cln;
    ngx_http_lua_ctx_t *ctx;

    if (size == 0) {
        ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

        r = r->main;

        if (ctx != ((void*)0) && ctx->free_cleanup) {
            cln = ctx->free_cleanup;
            ctx->free_cleanup = cln->next;

            dd("reuse cleanup: %p", cln);

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "lua http cleanup reuse: %p", cln);

            cln->handler = ((void*)0);
            cln->next = r->cleanup;

            r->cleanup = cln;

            return cln;
        }
    }

    return ngx_http_cleanup_add(r, size);
}
