
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_28__ {int read_event_handler; TYPE_2__* connection; int stream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_29__ {scalar_t__ check_client_abort; } ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_26__ {int co_ref; int co_top; int * co; } ;
struct TYPE_30__ {int entered_content_phase; int context; int * cleanup; TYPE_1__* cur_co_ctx; TYPE_1__ entry_co_ctx; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_31__ {int handler; TYPE_5__* data; } ;
typedef TYPE_6__ ngx_http_cleanup_t ;
struct TYPE_32__ {int active; } ;
typedef TYPE_7__ ngx_event_t ;
typedef int lua_State ;
struct TYPE_27__ {TYPE_7__* read; int log; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_CONTENT ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 int dd (char*) ;
 int lua_setfenv (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 scalar_t__ ngx_add_event (TYPE_7__*,int ,int ) ;
 int ngx_http_block_reading ;
 TYPE_6__* ngx_http_cleanup_add (TYPE_3__*,int ) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_http_lua_content_run_posted_threads (int *,TYPE_3__*,TYPE_5__*,int) ;
 TYPE_5__* ngx_http_lua_create_ctx (TYPE_3__*) ;
 int ngx_http_lua_get_globals_table (int *) ;
 int ngx_http_lua_module ;
 int * ngx_http_lua_new_thread (TYPE_3__*,int *,int*) ;
 int ngx_http_lua_rd_check_broken_connection ;
 int ngx_http_lua_request_cleanup_handler ;
 int ngx_http_lua_reset_ctx (TYPE_3__*,int *,TYPE_5__*) ;
 scalar_t__ ngx_http_lua_run_thread (int *,TYPE_3__*,TYPE_5__*,int ) ;
 int ngx_http_lua_set_req (int *,TYPE_3__*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

ngx_int_t
ngx_http_lua_content_by_chunk(lua_State *L, ngx_http_request_t *r)
{
    int co_ref;
    ngx_int_t rc;
    lua_State *co;
    ngx_event_t *rev;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_cleanup_t *cln;

    ngx_http_lua_loc_conf_t *llcf;

    dd("content by chunk");

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    if (ctx == ((void*)0)) {
        ctx = ngx_http_lua_create_ctx(r);
        if (ctx == ((void*)0)) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

    } else {
        dd("reset ctx");
        ngx_http_lua_reset_ctx(r, L, ctx);
    }

    ctx->entered_content_phase = 1;


    co = ngx_http_lua_new_thread(r, L, &co_ref);

    if (co == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "lua: failed to create new coroutine to handle request");

        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }


    lua_xmove(L, co, 1);



    ngx_http_lua_get_globals_table(co);
    lua_setfenv(co, -2);



    ngx_http_lua_set_req(co, r);

    ctx->cur_co_ctx = &ctx->entry_co_ctx;
    ctx->cur_co_ctx->co = co;
    ctx->cur_co_ctx->co_ref = co_ref;





    if (ctx->cleanup == ((void*)0)) {
        cln = ngx_http_cleanup_add(r, 0);
        if (cln == ((void*)0)) {
            return NGX_HTTP_INTERNAL_SERVER_ERROR;
        }

        cln->handler = ngx_http_lua_request_cleanup_handler;
        cln->data = ctx;
        ctx->cleanup = &cln->handler;
    }


    ctx->context = NGX_HTTP_LUA_CONTEXT_CONTENT;

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    if (llcf->check_client_abort) {
        r->read_event_handler = ngx_http_lua_rd_check_broken_connection;





        rev = r->connection->read;

        if (!rev->active) {
            if (ngx_add_event(rev, NGX_READ_EVENT, 0) != NGX_OK) {
                return NGX_ERROR;
            }
        }





    } else {
        r->read_event_handler = ngx_http_block_reading;
    }

    rc = ngx_http_lua_run_thread(L, r, ctx, 0);

    if (rc == NGX_ERROR || rc >= NGX_OK) {
        return rc;
    }

    if (rc == NGX_AGAIN) {
        return ngx_http_lua_content_run_posted_threads(L, r, ctx, 0);
    }

    if (rc == NGX_DONE) {
        return ngx_http_lua_content_run_posted_threads(L, r, ctx, 1);
    }

    return NGX_OK;
}
