
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int NGX_ERROR ;
 int NGX_OK ;
 int code_cache_key ;
 int dd (char*,...) ;
 int lua_istable (int *,int) ;
 int lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_setfield (int *,int,char const*) ;
 int lua_topointer (int *,int) ;
 int ngx_http_lua_lightudata_mask (int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_cache_store_code(lua_State *L, const char *key)
{

    int rc;



    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          code_cache_key));
    lua_rawget(L, LUA_REGISTRYINDEX);

    dd("Code cache table to store: %p", lua_topointer(L, -1));

    if (!lua_istable(L, -1)) {
        dd("Error: code cache table to load did not exist!!");
        return NGX_ERROR;
    }

    lua_pushvalue(L, -2);
    lua_setfield(L, -2, key);


    lua_pop(L, 1);



    rc = lua_pcall(L, 0, 1, 0);
    if (rc != 0) {
        dd("Error: failed to call closure factory!!");
        return NGX_ERROR;
    }


    return NGX_OK;
}
