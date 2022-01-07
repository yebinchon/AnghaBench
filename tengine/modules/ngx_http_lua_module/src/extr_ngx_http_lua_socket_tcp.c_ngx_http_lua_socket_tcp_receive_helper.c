
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {int write_event_handler; TYPE_2__* connection; int read_event_handler; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {int read_waiting; int (* read_prepare_retvals ) (TYPE_3__*,TYPE_4__*,int *) ;scalar_t__ body_downstream; scalar_t__ raw_downstream; struct TYPE_20__* read_co_ctx; struct TYPE_20__* data; int cleanup; int read_event_handler; scalar_t__ ft_type; int read_timeout; struct TYPE_20__* bufs_in; struct TYPE_20__* buf_in; int * buf; int buffer; TYPE_1__* conf; struct TYPE_20__* input_filter_ctx; } ;
typedef TYPE_4__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_21__ {TYPE_4__* downstream; scalar_t__ entered_content_phase; TYPE_4__* cur_co_ctx; int free_recv_bufs; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
typedef TYPE_4__ ngx_http_lua_co_ctx_t ;
typedef int lua_State ;
struct TYPE_18__ {int log; } ;
struct TYPE_17__ {int buffer_size; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int luaL_error (int *,char*) ;
 int lua_yield (int *,int ) ;
 int ngx_http_core_run_phases ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_lua_chain_get_free_buf (int ,int ,int *,int ) ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_4__*) ;
 int ngx_http_lua_coctx_cleanup ;
 int ngx_http_lua_content_wev_handler ;
 int ngx_http_lua_module ;
 int ngx_http_lua_req_socket_rev_handler ;
 int ngx_http_lua_socket_read_handler ;
 scalar_t__ ngx_http_lua_socket_tcp_read (TYPE_3__*,TYPE_4__*) ;
 int ngx_http_lua_socket_tcp_receive_retval_handler (TYPE_3__*,TYPE_4__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_receive_helper(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    ngx_int_t rc;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_co_ctx_t *coctx;

    u->input_filter_ctx = u;

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    if (u->bufs_in == ((void*)0)) {
        u->bufs_in =
            ngx_http_lua_chain_get_free_buf(r->connection->log, r->pool,
                                            &ctx->free_recv_bufs,
                                            u->conf->buffer_size);

        if (u->bufs_in == ((void*)0)) {
            return luaL_error(L, "no memory");
        }

        u->buf_in = u->bufs_in;
        u->buffer = *u->buf_in->buf;
    }

    dd("tcp receive: buf_in: %p, bufs_in: %p", u->buf_in, u->bufs_in);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket read timeout: %M", u->read_timeout);

    if (u->raw_downstream || u->body_downstream) {
        r->read_event_handler = ngx_http_lua_req_socket_rev_handler;
    }

    u->read_waiting = 0;
    u->read_co_ctx = ((void*)0);

    rc = ngx_http_lua_socket_tcp_read(r, u);

    if (rc == NGX_ERROR) {
        dd("read failed: %d", (int) u->ft_type);
        rc = ngx_http_lua_socket_tcp_receive_retval_handler(r, u, L);
        dd("tcp receive retval returned: %d", (int) rc);
        return rc;
    }

    if (rc == NGX_OK) {

        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua tcp socket receive done in a single run");

        return ngx_http_lua_socket_tcp_receive_retval_handler(r, u, L);
    }



    u->read_event_handler = ngx_http_lua_socket_read_handler;

    coctx = ctx->cur_co_ctx;

    ngx_http_lua_cleanup_pending_operation(coctx);
    coctx->cleanup = ngx_http_lua_coctx_cleanup;
    coctx->data = u;

    if (ctx->entered_content_phase) {
        r->write_event_handler = ngx_http_lua_content_wev_handler;

    } else {
        r->write_event_handler = ngx_http_core_run_phases;
    }

    u->read_co_ctx = coctx;
    u->read_waiting = 1;
    u->read_prepare_retvals = ngx_http_lua_socket_tcp_receive_retval_handler;

    dd("setting data to %p, coctx:%p", u, coctx);

    if (u->raw_downstream || u->body_downstream) {
        ctx->downstream = u;
    }

    return lua_yield(L, 0);
}
