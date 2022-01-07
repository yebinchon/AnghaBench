
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int method; int method_name; } ;
typedef TYPE_1__ ngx_http_request_t ;
typedef int lua_State ;
 int luaL_checkint (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_1__*) ;
 int ngx_http_lua_copy_method ;
 int ngx_http_lua_delete_method ;
 int ngx_http_lua_get_method ;
 TYPE_1__* ngx_http_lua_get_req (int *) ;
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

__attribute__((used)) static int
ngx_http_lua_ngx_req_set_method(lua_State *L)
{
    int n;
    int method;
    ngx_http_request_t *r;

    n = lua_gettop(L);
    if (n != 1) {
        return luaL_error(L, "only one argument expected but got %d", n);
    }

    method = luaL_checkint(L, 1);

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "request object not found");
    }

    ngx_http_lua_check_fake_request(L, r);

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
            return luaL_error(L, "unsupported HTTP method: %d", method);
    }

    r->method = method;

    return 0;
}
