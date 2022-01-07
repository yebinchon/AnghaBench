
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_ERRRUN ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int,int,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int ) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int json_protect_conversion(lua_State *l)
{
    int err;


    luaL_argcheck(l, lua_gettop(l) == 1, 1, "expected 1 argument");


    lua_pushvalue(l, lua_upvalueindex(1));
    lua_insert(l, 1);
    err = lua_pcall(l, 1, 1, 0);
    if (!err)
        return 1;

    if (err == LUA_ERRRUN) {
        lua_pushnil(l);
        lua_insert(l, -2);
        return 2;
    }



    return luaL_error(l, "Memory allocation error in CJSON protected call");
}
