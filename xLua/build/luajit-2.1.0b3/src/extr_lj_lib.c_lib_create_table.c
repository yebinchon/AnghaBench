
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int GCtab ;


 int LJ_ERR_BADMODN ;
 int LUA_GLOBALSINDEX ;
 int LUA_REGISTRYINDEX ;
 int lj_err_callerv (TYPE_1__*,int ,char const*) ;
 int * luaL_findtable (TYPE_1__*,int ,char const*,int) ;
 int lua_createtable (TYPE_1__*,int ,int) ;
 int lua_getfield (TYPE_1__*,int,char const*) ;
 int lua_setfield (TYPE_1__*,int,char const*) ;
 int settabV (TYPE_1__*,scalar_t__,int *) ;
 int * tabV (scalar_t__) ;
 int tvistab (scalar_t__) ;

__attribute__((used)) static GCtab *lib_create_table(lua_State *L, const char *libname, int hsize)
{
  if (libname) {
    luaL_findtable(L, LUA_REGISTRYINDEX, "_LOADED", 16);
    lua_getfield(L, -1, libname);
    if (!tvistab(L->top-1)) {
      L->top--;
      if (luaL_findtable(L, LUA_GLOBALSINDEX, libname, hsize) != ((void*)0))
 lj_err_callerv(L, LJ_ERR_BADMODN, libname);
      settabV(L, L->top, tabV(L->top-1));
      L->top++;
      lua_setfield(L, -3, libname);
    }
    L->top--;
    settabV(L, L->top-1, tabV(L->top));
  } else {
    lua_createtable(L, 0, hsize);
  }
  return tabV(L->top-1);
}
