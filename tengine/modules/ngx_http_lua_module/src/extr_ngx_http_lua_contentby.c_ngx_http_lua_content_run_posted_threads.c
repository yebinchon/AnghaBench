
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_2__* main; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_1__* co_ctx; struct TYPE_16__* next; } ;
typedef TYPE_4__ ngx_http_lua_posted_thread_t ;
struct TYPE_17__ {TYPE_1__* cur_co_ctx; TYPE_4__* posted_threads; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_14__ {int count; } ;
struct TYPE_13__ {scalar_t__ co_status; int co; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_HTTP_LUA_CO_RUNNING ;
 scalar_t__ NGX_OK ;
 int dd (char*,TYPE_4__*) ;
 int ngx_http_lua_finalize_request (TYPE_3__*,scalar_t__) ;
 int ngx_http_lua_probe_run_posted_thread (TYPE_3__*,int ,int) ;
 scalar_t__ ngx_http_lua_run_thread (int *,TYPE_3__*,TYPE_5__*,int ) ;

ngx_int_t
ngx_http_lua_content_run_posted_threads(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx, int n)
{
    ngx_int_t rc;
    ngx_http_lua_posted_thread_t *pt;

    dd("run posted threads: %p", ctx->posted_threads);

    for ( ;; ) {
        pt = ctx->posted_threads;
        if (pt == ((void*)0)) {
            goto done;
        }

        ctx->posted_threads = pt->next;

        ngx_http_lua_probe_run_posted_thread(r, pt->co_ctx->co,
                                             (int) pt->co_ctx->co_status);

        dd("posted thread status: %d", pt->co_ctx->co_status);

        if (pt->co_ctx->co_status != NGX_HTTP_LUA_CO_RUNNING) {
            continue;
        }

        ctx->cur_co_ctx = pt->co_ctx;

        rc = ngx_http_lua_run_thread(L, r, ctx, 0);

        if (rc == NGX_AGAIN) {
            continue;
        }

        if (rc == NGX_DONE) {
            n++;
            continue;
        }

        if (rc == NGX_OK) {
            while (n > 0) {
                ngx_http_lua_finalize_request(r, NGX_DONE);
                n--;
            }

            return NGX_OK;
        }



        return rc;
    }

done:

    if (n == 1) {
        return NGX_DONE;
    }

    if (n == 0) {
        r->main->count++;
        return NGX_DONE;
    }



    do {
        ngx_http_lua_finalize_request(r, NGX_DONE);
    } while (--n > 1);

    return NGX_DONE;
}
