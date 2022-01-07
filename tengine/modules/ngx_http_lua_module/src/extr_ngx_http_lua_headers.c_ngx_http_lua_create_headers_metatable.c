
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int lua_State ;
typedef int buf ;


 int LUA_REGISTRYINDEX ;
 int NGX_LOG_ERR ;
 int headers_metatable_key ;
 int luaL_loadbuffer (int *,char const*,int,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_rawset (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_tostring (int *,int) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_log_error (int ,int *,int ,char*,int,int ) ;

void
ngx_http_lua_create_headers_metatable(ngx_log_t *log, lua_State *L)
{
    int rc;
    const char buf[] =
        "local tb, key = ...\n"
        "local new_key = string.gsub(string.lower(key), '_', '-')\n"
        "if new_key ~= key then return tb[new_key] else return nil end";

    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          headers_metatable_key));



    lua_createtable(L, 0, 1);

    rc = luaL_loadbuffer(L, buf, sizeof(buf) - 1, "=headers metatable");
    if (rc != 0) {
        ngx_log_error(NGX_LOG_ERR, log, 0,
                      "failed to load Lua code for the metamethod for "
                      "headers: %i: %s", rc, lua_tostring(L, -1));

        lua_pop(L, 3);
        return;
    }

    lua_setfield(L, -2, "__index");
    lua_rawset(L, LUA_REGISTRYINDEX);
}
