
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread ;
typedef int lua_State ;


 int luaL_argcheck (int *,int ,int,char*) ;
 int ** luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static thread *checkthread(lua_State *L) {
    thread **t = luaL_checkudata(L, 1, "wrk.thread");
    luaL_argcheck(L, t != ((void*)0), 1, "`thread' expected");
    return *t;
}
