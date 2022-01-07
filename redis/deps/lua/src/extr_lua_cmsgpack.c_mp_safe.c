
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int,int ,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int ) ;
 int lua_upvalueindex (int) ;

int mp_safe(lua_State *L) {
    int argc, err, total_results;

    argc = lua_gettop(L);



    lua_pushvalue(L, lua_upvalueindex(1));
    lua_insert(L, 1);

    err = lua_pcall(L, argc, LUA_MULTRET, 0);
    total_results = lua_gettop(L);

    if (!err) {
        return total_results;
    } else {
        lua_pushnil(L);
        lua_insert(L,-2);
        return 2;
    }
}
