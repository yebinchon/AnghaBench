
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {int pool; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_3__* co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_posted_thread_t ;
struct TYPE_10__ {TYPE_2__* zombie_child_threads; } ;
typedef TYPE_3__ ngx_http_lua_co_ctx_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_2__* ngx_palloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_post_zombie_thread(ngx_http_request_t *r,
    ngx_http_lua_co_ctx_t *parent, ngx_http_lua_co_ctx_t *thread)
{
    ngx_http_lua_posted_thread_t **p;
    ngx_http_lua_posted_thread_t *pt;

    pt = ngx_palloc(r->pool, sizeof(ngx_http_lua_posted_thread_t));
    if (pt == ((void*)0)) {
        return NGX_ERROR;
    }

    pt->co_ctx = thread;
    pt->next = ((void*)0);

    for (p = &parent->zombie_child_threads; *p; p = &(*p)->next) { }

    *p = pt;

    return NGX_OK;
}
