
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int do_nothing ;
 int finalize ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int global_newtry(lua_State *L) {
    lua_settop(L, 1);
    if (lua_isnil(L, 1)) lua_pushcfunction(L, do_nothing);
    lua_pushcclosure(L, finalize, 1);
    return 1;
}
