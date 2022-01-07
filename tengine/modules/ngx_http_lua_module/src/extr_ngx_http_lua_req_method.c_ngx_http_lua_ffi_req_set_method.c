
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_socket_t ;
struct TYPE_5__ {int method; int method_name; TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_4__ {scalar_t__ fd; } ;


 int NGX_DECLINED ;





 int NGX_HTTP_LUA_FFI_BAD_CONTEXT ;
 int NGX_OK ;
 int ngx_http_lua_copy_method ;
 int ngx_http_lua_delete_method ;
 int ngx_http_lua_get_method ;
 int ngx_http_lua_head_method ;
 int ngx_http_lua_lock_method ;
 int ngx_http_lua_mkcol_method ;
 int ngx_http_lua_move_method ;
 int ngx_http_lua_options_method ;
 int ngx_http_lua_patch_method ;
 int ngx_http_lua_post_method ;
 int ngx_http_lua_propfind_method ;
 int ngx_http_lua_proppatch_method ;
 int ngx_http_lua_put_method ;
 int ngx_http_lua_trace_method ;
 int ngx_http_lua_unlock_method ;

int
ngx_http_lua_ffi_req_set_method(ngx_http_request_t *r, int method)
{
    if (r->connection->fd == (ngx_socket_t) -1) {
        return NGX_HTTP_LUA_FFI_BAD_CONTEXT;
    }

    switch (method) {
        case 140:
            r->method_name = ngx_http_lua_get_method;
            break;

        case 133:
            r->method_name = ngx_http_lua_post_method;
            break;

        case 130:
            r->method_name = ngx_http_lua_put_method;
            break;

        case 139:
            r->method_name = ngx_http_lua_head_method;
            break;

        case 141:
            r->method_name = ngx_http_lua_delete_method;
            break;

        case 135:
            r->method_name = ngx_http_lua_options_method;
            break;

        case 137:
            r->method_name = ngx_http_lua_mkcol_method;
            break;

        case 142:
            r->method_name = ngx_http_lua_copy_method;
            break;

        case 136:
            r->method_name = ngx_http_lua_move_method;
            break;

        case 132:
            r->method_name = ngx_http_lua_propfind_method;
            break;

        case 131:
            r->method_name = ngx_http_lua_proppatch_method;
            break;

        case 138:
            r->method_name = ngx_http_lua_lock_method;
            break;

        case 128:
            r->method_name = ngx_http_lua_unlock_method;
            break;

        case 134:
            r->method_name = ngx_http_lua_patch_method;
            break;

        case 129:
            r->method_name = ngx_http_lua_trace_method;
            break;

        default:
            return NGX_DECLINED;
    }

    r->method = method;
    return NGX_OK;
}
