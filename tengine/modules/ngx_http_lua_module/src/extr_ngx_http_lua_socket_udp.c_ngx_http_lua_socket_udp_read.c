
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_request_t ;
struct TYPE_12__ {TYPE_4__* connection; } ;
struct TYPE_13__ {int read_timeout; int socket_errno; scalar_t__ received; int recv_buf_size; TYPE_1__ udp_connection; scalar_t__ waiting; } ;
typedef TYPE_2__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_14__ {scalar_t__ timer_set; scalar_t__ active; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_15__ {int log; TYPE_3__* read; } ;
typedef TYPE_4__ ngx_connection_t ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_SOCKET_FT_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_3__*,int ) ;
 int ngx_del_timer (TYPE_3__*) ;
 scalar_t__ ngx_handle_read_event (TYPE_3__*,int ) ;
 int ngx_http_lua_socket_udp_buffer ;
 int ngx_http_lua_socket_udp_handle_error (int *,TYPE_2__*,int ) ;
 int ngx_http_lua_socket_udp_handle_success (int *,TYPE_2__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_socket_errno ;
 scalar_t__ ngx_udp_recv (TYPE_4__*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_udp_read(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u)
{
    ngx_connection_t *c;
    ngx_event_t *rev;
    ssize_t n;

    c = u->udp_connection.connection;
    rev = c->read;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua udp socket read data: waiting: %d", (int) u->waiting);

    n = ngx_udp_recv(u->udp_connection.connection,
                     ngx_http_lua_socket_udp_buffer, u->recv_buf_size);

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua udp recv returned %z", n);

    if (n >= 0) {
        u->received = n;
        ngx_http_lua_socket_udp_handle_success(r, u);
        return NGX_OK;
    }

    if (n == NGX_ERROR) {
        u->socket_errno = ngx_socket_errno;
        ngx_http_lua_socket_udp_handle_error(r, u,
                                             NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return NGX_ERROR;
    }




    if (ngx_handle_read_event(rev, 0) != NGX_OK) {
        ngx_http_lua_socket_udp_handle_error(r, u,
                                             NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return NGX_ERROR;
    }


    if (rev->active) {
        ngx_add_timer(rev, u->read_timeout);

    } else if (rev->timer_set) {
        ngx_del_timer(rev);
    }

    return NGX_AGAIN;
}
