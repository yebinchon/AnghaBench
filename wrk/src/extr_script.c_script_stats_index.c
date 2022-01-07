
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max; int min; } ;
typedef TYPE_1__ stats ;
typedef int lua_State ;


 TYPE_1__* checkstats (int *) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushnumber (int *,int ) ;
 char* lua_tostring (int *,int) ;
 int script_stats_percentile ;
 int stats_mean (TYPE_1__*) ;
 int stats_stdev (TYPE_1__*,int ) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int script_stats_index(lua_State *L) {
    stats *s = checkstats(L);
    const char *method = lua_tostring(L, 2);
    if (!strcmp("min", method)) lua_pushnumber(L, s->min);
    if (!strcmp("max", method)) lua_pushnumber(L, s->max);
    if (!strcmp("mean", method)) lua_pushnumber(L, stats_mean(s));
    if (!strcmp("stdev", method)) lua_pushnumber(L, stats_stdev(s, stats_mean(s)));
    if (!strcmp("percentile", method)) {
        lua_pushcfunction(L, script_stats_percentile);
    }
    return 1;
}
