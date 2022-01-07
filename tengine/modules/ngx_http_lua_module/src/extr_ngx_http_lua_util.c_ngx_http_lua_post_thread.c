
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_8__ {struct TYPE_8__* next; int * co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_posted_thread_t ;
struct TYPE_9__ {TYPE_2__* posted_threads; } ;
typedef TYPE_3__ ngx_http_lua_ctx_t ;
typedef int ngx_http_lua_co_ctx_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_palloc (int ,int) ;

ngx_int_t
ngx_http_lua_post_thread(ngx_http_request_t *r, ngx_http_lua_ctx_t *ctx,
    ngx_http_lua_co_ctx_t *coctx)
{
    ngx_http_lua_posted_thread_t **p;
    ngx_http_lua_posted_thread_t *pt;

    pt = ngx_palloc(r->pool, sizeof(ngx_http_lua_posted_thread_t));
    if (pt == ((void*)0)) {
        return NGX_ERROR;
    }

    pt->co_ctx = coctx;
    pt->next = ((void*)0);

    for (p = &ctx->posted_threads; *p; p = &(*p)->next) { }

    *p = pt;

    return NGX_OK;
}
