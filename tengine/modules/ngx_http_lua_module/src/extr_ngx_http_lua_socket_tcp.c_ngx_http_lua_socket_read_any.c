
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_6__ {int ft_type; TYPE_2__* request; int rest; int buf_in; int buffer; } ;
typedef TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_5__ {TYPE_1__* connection; } ;
struct TYPE_4__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_SOCKET_FT_CLOSED ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ ngx_http_lua_read_any (int *,int ,int *,int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_socket_read_any(void *data, ssize_t bytes)
{
    ngx_http_lua_socket_tcp_upstream_t *u = data;

    ngx_int_t rc;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, u->request->connection->log, 0,
                   "lua tcp socket read any");

    rc = ngx_http_lua_read_any(&u->buffer, u->buf_in, &u->rest, bytes,
                               u->request->connection->log);
    if (rc == NGX_ERROR) {
        u->ft_type |= NGX_HTTP_LUA_SOCKET_FT_CLOSED;
        return NGX_ERROR;
    }

    return rc;
}
