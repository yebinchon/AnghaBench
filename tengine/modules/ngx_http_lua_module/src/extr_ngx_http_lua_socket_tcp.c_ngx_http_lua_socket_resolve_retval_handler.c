
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_27__ ;
typedef struct TYPE_32__ TYPE_25__ ;
typedef struct TYPE_31__ TYPE_24__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_10__ ;


struct TYPE_35__ {TYPE_10__* connection; int get; int * name; int socklen; scalar_t__ sockaddr; } ;
typedef TYPE_3__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_36__ {int host; int socklen; scalar_t__ sockaddr; } ;
typedef TYPE_4__ ngx_http_upstream_resolved_t ;
struct TYPE_37__ {int write_event_handler; TYPE_2__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_30__ {int * out; int ** last; } ;
struct TYPE_38__ {int ft_type; int conn_waiting; int write_prepare_retvals; TYPE_8__* write_co_ctx; int connect_timeout; void* write_event_handler; void* read_event_handler; TYPE_1__ writer; void* socket_errno; int * cleanup; TYPE_4__* resolved; TYPE_3__ peer; } ;
typedef TYPE_6__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_39__ {scalar_t__ entered_content_phase; TYPE_8__* cur_co_ctx; } ;
typedef TYPE_7__ ngx_http_lua_ctx_t ;
struct TYPE_40__ {TYPE_6__* data; int cleanup; } ;
typedef TYPE_8__ ngx_http_lua_co_ctx_t ;
struct TYPE_41__ {int handler; TYPE_6__* data; } ;
typedef TYPE_9__ ngx_http_cleanup_t ;
struct TYPE_29__ {TYPE_24__* write; TYPE_25__* read; scalar_t__ fd; int log; TYPE_27__* pool; int sendfile; TYPE_6__* data; } ;
typedef TYPE_10__ ngx_connection_t ;
typedef int lua_State ;
struct TYPE_34__ {int log; int sendfile; } ;
struct TYPE_33__ {int log; } ;
struct TYPE_32__ {int log; void* handler; } ;
struct TYPE_31__ {int log; void* handler; } ;


 int NGX_AGAIN ;
 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_SOCKET_FT_ERROR ;
 int NGX_HTTP_LUA_SOCKET_FT_NOMEM ;
 int NGX_HTTP_LUA_SOCKET_FT_RESOLVER ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int ngx_add_timer (TYPE_24__*,int ) ;
 TYPE_27__* ngx_create_pool (int,int ) ;
 scalar_t__ ngx_event_connect_peer (TYPE_3__*) ;
 scalar_t__ ngx_handle_read_event (TYPE_25__*,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_24__*,int ) ;
 int ngx_http_core_run_phases ;
 TYPE_7__* ngx_http_get_module_ctx (TYPE_5__*,int ) ;
 TYPE_9__* ngx_http_lua_cleanup_add (TYPE_5__*,int ) ;
 int ngx_http_lua_cleanup_pending_operation (TYPE_8__*) ;
 int ngx_http_lua_coctx_cleanup ;
 int ngx_http_lua_content_wev_handler ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_conn_error_retval_handler (TYPE_5__*,TYPE_6__*,int *) ;
 void* ngx_http_lua_socket_connected_handler ;
 void* ngx_http_lua_socket_dummy_handler ;
 int ngx_http_lua_socket_handle_conn_error (TYPE_5__*,TYPE_6__*,int) ;
 int ngx_http_lua_socket_prepare_error_retvals (TYPE_5__*,TYPE_6__*,int *,int ) ;
 int ngx_http_lua_socket_tcp_cleanup ;
 int ngx_http_lua_socket_tcp_conn_retval_handler ;
 int ngx_http_lua_socket_tcp_get_peer ;
 void* ngx_http_lua_socket_tcp_handler ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 void* ngx_socket_errno ;

__attribute__((used)) static int
ngx_http_lua_socket_resolve_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_peer_connection_t *pc;
    ngx_connection_t *c;
    ngx_http_cleanup_t *cln;
    ngx_http_upstream_resolved_t *ur;
    ngx_int_t rc;
    ngx_http_lua_co_ctx_t *coctx;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket resolve retval handler");

    if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_RESOLVER) {
        return 2;
    }

    pc = &u->peer;

    ur = u->resolved;

    if (ur->sockaddr) {
        pc->sockaddr = ur->sockaddr;
        pc->socklen = ur->socklen;
        pc->name = &ur->host;

    } else {
        lua_pushnil(L);
        lua_pushliteral(L, "resolver not working");
        return 2;
    }

    pc->get = ngx_http_lua_socket_tcp_get_peer;

    rc = ngx_event_connect_peer(pc);

    if (rc == NGX_ERROR) {
        u->socket_errno = ngx_socket_errno;
    }

    if (u->cleanup == ((void*)0)) {
        cln = ngx_http_lua_cleanup_add(r, 0);
        if (cln == ((void*)0)) {
            u->ft_type |= NGX_HTTP_LUA_SOCKET_FT_ERROR;
            lua_pushnil(L);
            lua_pushliteral(L, "no memory");
            return 2;
        }

        cln->handler = ngx_http_lua_socket_tcp_cleanup;
        cln->data = u;
        u->cleanup = &cln->handler;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket connect: %i", rc);

    if (rc == NGX_ERROR) {
        return ngx_http_lua_socket_conn_error_retval_handler(r, u, L);
    }

    if (rc == NGX_BUSY) {
        u->ft_type |= NGX_HTTP_LUA_SOCKET_FT_ERROR;
        lua_pushnil(L);
        lua_pushliteral(L, "no live connection");
        return 2;
    }

    if (rc == NGX_DECLINED) {
        dd("socket errno: %d", (int) ngx_socket_errno);
        u->ft_type |= NGX_HTTP_LUA_SOCKET_FT_ERROR;
        u->socket_errno = ngx_socket_errno;
        return ngx_http_lua_socket_conn_error_retval_handler(r, u, L);
    }



    c = pc->connection;

    c->data = u;

    c->write->handler = ngx_http_lua_socket_tcp_handler;
    c->read->handler = ngx_http_lua_socket_tcp_handler;

    u->write_event_handler = ngx_http_lua_socket_connected_handler;
    u->read_event_handler = ngx_http_lua_socket_connected_handler;

    c->sendfile &= r->connection->sendfile;

    if (c->pool == ((void*)0)) {



        c->pool = ngx_create_pool(128, r->connection->log);
        if (c->pool == ((void*)0)) {
            return ngx_http_lua_socket_prepare_error_retvals(r, u, L,
                                                NGX_HTTP_LUA_SOCKET_FT_NOMEM);
        }
    }

    c->log = r->connection->log;
    c->pool->log = c->log;
    c->read->log = c->log;
    c->write->log = c->log;
    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    coctx = ctx->cur_co_ctx;

    dd("setting data to %p", u);

    if (rc == NGX_OK) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua tcp socket connected: fd:%d", (int) c->fd);






        if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
            ngx_http_lua_socket_handle_conn_error(r, u,
                                                  NGX_HTTP_LUA_SOCKET_FT_ERROR);
            lua_pushnil(L);
            lua_pushliteral(L, "failed to handle write event");
            return 2;
        }

        if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
            ngx_http_lua_socket_handle_conn_error(r, u,
                                                  NGX_HTTP_LUA_SOCKET_FT_ERROR);
            lua_pushnil(L);
            lua_pushliteral(L, "failed to handle read event");
            return 2;
        }

        u->read_event_handler = ngx_http_lua_socket_dummy_handler;
        u->write_event_handler = ngx_http_lua_socket_dummy_handler;

        lua_pushinteger(L, 1);
        return 1;
    }



    ngx_http_lua_cleanup_pending_operation(coctx);
    coctx->cleanup = ngx_http_lua_coctx_cleanup;
    coctx->data = u;

    ngx_add_timer(c->write, u->connect_timeout);

    u->write_co_ctx = ctx->cur_co_ctx;
    u->conn_waiting = 1;
    u->write_prepare_retvals = ngx_http_lua_socket_tcp_conn_retval_handler;

    dd("setting data to %p", u);

    if (ctx->entered_content_phase) {
        r->write_event_handler = ngx_http_lua_content_wev_handler;

    } else {
        r->write_event_handler = ngx_http_core_run_phases;
    }

    return NGX_AGAIN;
}
