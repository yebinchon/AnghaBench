
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_socket_t ;
struct TYPE_6__ {size_t len; int * data; } ;
struct TYPE_7__ {TYPE_2__ method_name; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_5__ {scalar_t__ fd; } ;


 int NGX_HTTP_LUA_FFI_BAD_CONTEXT ;
 int NGX_OK ;

int
ngx_http_lua_ffi_req_get_method_name(ngx_http_request_t *r, u_char **name,
    size_t *len)
{
    if (r->connection->fd == (ngx_socket_t) -1) {
        return NGX_HTTP_LUA_FFI_BAD_CONTEXT;
    }

    *name = r->method_name.data;
    *len = r->method_name.len;

    return NGX_OK;
}
