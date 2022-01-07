
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_16__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_23__ {scalar_t__ read_event_handler; TYPE_2__* main; void* write_event_handler; int ctx; TYPE_1__* connection; scalar_t__ filter_finalize; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_25__ {scalar_t__ len; } ;
struct TYPE_26__ {char* data; scalar_t__ len; } ;
struct TYPE_24__ {int entered_content_phase; TYPE_5__ exec_args; TYPE_6__ exec_uri; TYPE_16__* cur_co_ctx; } ;
typedef TYPE_4__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_22__ {scalar_t__ count; } ;
struct TYPE_21__ {int log; } ;
struct TYPE_20__ {int co_status; int co; } ;


 scalar_t__ NGX_DONE ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_CO_DEAD ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_WARN ;
 int dd (char*,...) ;
 void* ngx_http_block_reading ;
 scalar_t__ ngx_http_internal_redirect (TYPE_3__*,TYPE_6__*,TYPE_5__*) ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_16__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_probe_coroutine_done (TYPE_3__*,int ,int) ;
 scalar_t__ ngx_http_lua_rd_check_broken_connection ;
 int ngx_http_lua_request_cleanup (TYPE_4__*,int) ;
 int ngx_http_max_module ;
 scalar_t__ ngx_http_named_location (TYPE_3__*,TYPE_6__*) ;
 void* ngx_http_request_empty_handler ;
 int ngx_http_set_ctx (TYPE_3__*,TYPE_4__*,int ) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_6__*) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_5__*,TYPE_6__*) ;
 int ngx_memzero (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_handle_exec(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx)
{
    ngx_int_t rc;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua thread initiated internal redirect to %V",
                   &ctx->exec_uri);

    ngx_http_lua_cleanup_pending_operation(ctx->cur_co_ctx);

    ngx_http_lua_probe_coroutine_done(r, ctx->cur_co_ctx->co, 1);

    ctx->cur_co_ctx->co_status = NGX_HTTP_LUA_CO_DEAD;

    if (r->filter_finalize) {
        ngx_http_set_ctx(r, ctx, ngx_http_lua_module);
    }

    ngx_http_lua_request_cleanup(ctx, 1 );

    if (ctx->exec_uri.data[0] == '@') {
        if (ctx->exec_args.len > 0) {
            ngx_log_error(NGX_LOG_WARN, r->connection->log, 0,
                          "query strings %V ignored when exec'ing "
                          "named location %V",
                          &ctx->exec_args, &ctx->exec_uri);
        }

        r->write_event_handler = ngx_http_request_empty_handler;


        if (r->read_event_handler == ngx_http_lua_rd_check_broken_connection) {


            r->read_event_handler = ngx_http_block_reading;
        }




        ngx_memzero(r->ctx, sizeof(void *) * ngx_http_max_module);


        rc = ngx_http_named_location(r, &ctx->exec_uri);
        if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
            return rc;
        }
        return NGX_DONE;
    }

    dd("internal redirect to %.*s", (int) ctx->exec_uri.len,
       ctx->exec_uri.data);

    r->write_event_handler = ngx_http_request_empty_handler;

    if (r->read_event_handler == ngx_http_lua_rd_check_broken_connection) {


        r->read_event_handler = ngx_http_block_reading;
    }

    rc = ngx_http_internal_redirect(r, &ctx->exec_uri, &ctx->exec_args);

    dd("internal redirect returned %d when in content phase? "
       "%d", (int) rc, ctx->entered_content_phase);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        return rc;
    }
    return NGX_DONE;
}
