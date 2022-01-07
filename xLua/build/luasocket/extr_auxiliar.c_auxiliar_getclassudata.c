
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 void* luaL_checkudata (int *,int,char const*) ;

void *auxiliar_getclassudata(lua_State *L, const char *classname, int objidx) {
    return luaL_checkudata(L, objidx, classname);
}
