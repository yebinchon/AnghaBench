
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;
typedef int lua_State ;


 int luaL_getmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;

void script_push_stats(lua_State *L, stats *s) {
    stats **ptr = (stats **) lua_newuserdata(L, sizeof(stats **));
    *ptr = s;
    luaL_getmetatable(L, "wrk.stats");
    lua_setmetatable(L, -2);
}
