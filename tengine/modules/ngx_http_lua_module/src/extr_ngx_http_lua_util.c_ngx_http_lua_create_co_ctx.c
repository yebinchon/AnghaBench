
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_10__ {int * user_co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_11__ {int co_ref; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;


 int LUA_NOREF ;
 int * ngx_list_create (int ,int,int) ;
 TYPE_3__* ngx_list_push (int *) ;
 int ngx_memzero (TYPE_3__*,int) ;

ngx_http_lua_co_ctx_t *
ngx_http_lua_create_co_ctx(ngx_http_request_t *r, ngx_http_lua_ctx_t *ctx)
{
    ngx_http_lua_co_ctx_t *coctx;

    if (ctx->user_co_ctx == ((void*)0)) {
        ctx->user_co_ctx = ngx_list_create(r->pool, 4,
                                           sizeof(ngx_http_lua_co_ctx_t));
        if (ctx->user_co_ctx == ((void*)0)) {
            return ((void*)0);
        }
    }

    coctx = ngx_list_push(ctx->user_co_ctx);
    if (coctx == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memzero(coctx, sizeof(ngx_http_lua_co_ctx_t));

    coctx->co_ref = LUA_NOREF;

    return coctx;
}
