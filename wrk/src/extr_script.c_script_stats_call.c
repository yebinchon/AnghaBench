
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int stats ;
typedef int lua_State ;


 int * checkstats (int *) ;
 int lua_pushnumber (int *,scalar_t__) ;
 scalar_t__ lua_tonumber (int *,int) ;
 scalar_t__ stats_value_at (int *,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int script_stats_call(lua_State *L) {
    stats *s = checkstats(L);
    uint64_t index = lua_tonumber(L, 2);
    uint64_t count;
    lua_pushnumber(L, stats_value_at(s, index - 1, &count));
    lua_pushnumber(L, count);
    return 2;
}
