
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef int ngx_http_request_t ;
struct TYPE_7__ {scalar_t__ ft_type; TYPE_1__* write_co_ctx; } ;
typedef TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;
struct TYPE_6__ {int * cleanup; } ;


 int ngx_http_lua_socket_prepare_error_retvals (int *,TYPE_2__*,int *,scalar_t__) ;
 int ngx_http_lua_socket_tcp_finalize_write_part (int *,TYPE_2__*) ;

__attribute__((used)) static int
ngx_http_lua_socket_write_error_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    ngx_uint_t ft_type;

    if (u->write_co_ctx) {
        u->write_co_ctx->cleanup = ((void*)0);
    }

    ngx_http_lua_socket_tcp_finalize_write_part(r, u);

    ft_type = u->ft_type;
    u->ft_type = 0;
    return ngx_http_lua_socket_prepare_error_retvals(r, u, L, ft_type);
}
