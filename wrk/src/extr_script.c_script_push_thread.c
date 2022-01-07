
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread ;
typedef int lua_State ;


 int luaL_getmetatable (int *,char*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;

void script_push_thread(lua_State *L, thread *t) {
    thread **ptr = (thread **) lua_newuserdata(L, sizeof(thread **));
    *ptr = t;
    luaL_getmetatable(L, "wrk.thread");
    lua_setmetatable(L, -2);
}
