
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_8__ {size_t nelts; TYPE_4__* elts; struct TYPE_8__* next; } ;
typedef TYPE_2__ ngx_list_part_t ;
struct TYPE_10__ {int * co; } ;
struct TYPE_9__ {TYPE_1__* user_co_ctx; TYPE_4__ entry_co_ctx; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef TYPE_4__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_7__ {TYPE_2__ part; } ;



ngx_http_lua_co_ctx_t *
ngx_http_lua_get_co_ctx(lua_State *L, ngx_http_lua_ctx_t *ctx)
{
    ngx_uint_t i;
    ngx_list_part_t *part;
    ngx_http_lua_co_ctx_t *coctx;

    if (L == ctx->entry_co_ctx.co) {
        return &ctx->entry_co_ctx;
    }

    if (ctx->user_co_ctx == ((void*)0)) {
        return ((void*)0);
    }

    part = &ctx->user_co_ctx->part;
    coctx = part->elts;



    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }

            part = part->next;
            coctx = part->elts;
            i = 0;
        }

        if (coctx[i].co == L) {
            return &coctx[i];
        }
    }

    return ((void*)0);
}
