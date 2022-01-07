
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_gettable (int *,int) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int unwrap(lua_State *L) {
    if (lua_istable(L, -1)) {
        lua_pushnumber(L, 1);
        lua_gettable(L, -2);
        lua_pushnil(L);
        lua_insert(L, -2);
        return 1;
    } else return 0;
}
