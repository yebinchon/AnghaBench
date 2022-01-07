
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int http_version; } ;
typedef TYPE_1__ ngx_http_request_t ;
typedef int lua_State ;






 int luaL_error (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,double) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_1__*) ;
 TYPE_1__* ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_http_version(lua_State *L)
{
    ngx_http_request_t *r;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);

    switch (r->http_version) {
    case 128:
        lua_pushnumber(L, 0.9);
        break;

    case 131:
        lua_pushnumber(L, 1.0);
        break;

    case 130:
        lua_pushnumber(L, 1.1);
        break;


    case 129:
        lua_pushnumber(L, 2.0);
        break;


    default:
        lua_pushnil(L);
        break;
    }

    return 1;
}
