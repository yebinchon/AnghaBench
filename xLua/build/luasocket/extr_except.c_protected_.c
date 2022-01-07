
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int lua_error (int *) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pushvalue (int *,int ) ;
 int lua_upvalueindex (int) ;
 scalar_t__ unwrap (int *) ;

__attribute__((used)) static int protected_(lua_State *L) {
    lua_pushvalue(L, lua_upvalueindex(1));
    lua_insert(L, 1);
    if (lua_pcall(L, lua_gettop(L) - 1, LUA_MULTRET, 0) != 0) {
        if (unwrap(L)) return 2;
        else lua_error(L);
        return 0;
    } else return lua_gettop(L);
}
