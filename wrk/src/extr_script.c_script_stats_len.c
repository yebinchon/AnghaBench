
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;
typedef int lua_State ;


 int * checkstats (int *) ;
 int lua_pushinteger (int *,int ) ;
 int stats_popcount (int *) ;

__attribute__((used)) static int script_stats_len(lua_State *L) {
    stats *s = checkstats(L);
    lua_pushinteger(L, stats_popcount(s));
    return 1;
}
