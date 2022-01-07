
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_9__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_10__ {scalar_t__ len; scalar_t__ data; scalar_t__ not_found; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_11__ {int ncaptures; int* captures; int * captures_data; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int lua_State ;
typedef scalar_t__ LUA_NUMBER ;


 scalar_t__ LUA_TNUMBER ;
 scalar_t__ LUA_TSTRING ;
 int dd (char*,int,int) ;
 int luaL_error (int *,char*) ;
 int * lua_newuserdata (int *,size_t) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 scalar_t__ lua_tonumber (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int ngx_hash_strlow (int *,int *,size_t) ;
 TYPE_2__* ngx_http_get_variable (TYPE_3__*,TYPE_1__*,int) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_3__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;

__attribute__((used)) static int
ngx_http_lua_var_get(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *p, *lowcase;
    size_t len;
    ngx_uint_t hash;
    ngx_str_t name;
    ngx_http_variable_value_t *vv;
    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);
    if (lua_type(L, -1) != LUA_TSTRING) {
        return luaL_error(L, "bad variable name");
    }

    p = (u_char *) lua_tolstring(L, -1, &len);

    lowcase = lua_newuserdata(L, len);

    hash = ngx_hash_strlow(lowcase, p, len);

    name.len = len;
    name.data = lowcase;

    vv = ngx_http_get_variable(r, &name, hash);

    if (vv == ((void*)0) || vv->not_found) {
        lua_pushnil(L);
        return 1;
    }

    lua_pushlstring(L, (const char *) vv->data, (size_t) vv->len);
    return 1;
}
