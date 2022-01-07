
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_State ;


 int lua_call (int *,int ,int) ;
 int lua_getglobal (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_tonumber (int *,int) ;

uint64_t script_delay(lua_State *L) {
    lua_getglobal(L, "delay");
    lua_call(L, 0, 1);
    uint64_t delay = lua_tonumber(L, -1);
    lua_pop(L, 1);
    return delay;
}
