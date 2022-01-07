
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;
typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char*) ;
 int ** luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static stats *checkstats(lua_State *L) {
    stats **s = luaL_checkudata(L, 1, "wrk.stats");
    luaL_argcheck(L, s != ((void*)0), 1, "`stats' expected");
    return *s;
}
