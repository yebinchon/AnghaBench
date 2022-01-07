
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;
typedef int lua_State ;
typedef int lua_Number ;


 int * checkstats (int *) ;
 int luaL_checknumber (int *,int) ;
 int lua_pushnumber (int *,int ) ;
 int stats_percentile (int *,int ) ;

__attribute__((used)) static int script_stats_percentile(lua_State *L) {
    stats *s = checkstats(L);
    lua_Number p = luaL_checknumber(L, 2);
    lua_pushnumber(L, stats_percentile(s, p));
    return 1;
}
