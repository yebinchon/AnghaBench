
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stats ;
typedef int lua_State ;


 int lua_call (int *,int,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int script_push_stats (int *,int *) ;

void script_done(lua_State *L, stats *latency, stats *requests) {
    lua_getglobal(L, "done");
    lua_pushvalue(L, 1);

    script_push_stats(L, latency);
    script_push_stats(L, requests);

    lua_call(L, 3, 0);
    lua_pop(L, 1);
}
