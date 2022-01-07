
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int istailcall; int namewhat; int name; int isvararg; int nparams; int nups; int currentline; int what; int lastlinedefined; int linedefined; int short_src; int source; } ;
typedef TYPE_1__ lua_Debug ;


 int checkstack (int *,int *,int) ;
 int * getthread (int *,int*) ;
 int luaL_argerror (int *,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 char* luaL_optstring (int *,int,char*) ;
 int lua_getinfo (int *,char const*,TYPE_1__*) ;
 int lua_getstack (int *,int,TYPE_1__*) ;
 scalar_t__ lua_isfunction (int *,int) ;
 int lua_newtable (int *) ;
 char* lua_pushfstring (int *,char*,char const*) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int settabsb (int *,char*,int ) ;
 int settabsi (int *,char*,int ) ;
 int settabss (int *,char*,int ) ;
 scalar_t__ strchr (char const*,float) ;
 int treatstackoption (int *,int *,char*) ;

__attribute__((used)) static int db_getinfo (lua_State *L) {
  lua_Debug ar;
  int arg;
  lua_State *L1 = getthread(L, &arg);
  const char *options = luaL_optstring(L, arg+2, "flnStu");
  checkstack(L, L1, 3);
  if (lua_isfunction(L, arg + 1)) {
    options = lua_pushfstring(L, ">%s", options);
    lua_pushvalue(L, arg + 1);
    lua_xmove(L, L1, 1);
  }
  else {
    if (!lua_getstack(L1, (int)luaL_checkinteger(L, arg + 1), &ar)) {
      lua_pushnil(L);
      return 1;
    }
  }
  if (!lua_getinfo(L1, options, &ar))
    return luaL_argerror(L, arg+2, "invalid option");
  lua_newtable(L);
  if (strchr(options, 'S')) {
    settabss(L, "source", ar.source);
    settabss(L, "short_src", ar.short_src);
    settabsi(L, "linedefined", ar.linedefined);
    settabsi(L, "lastlinedefined", ar.lastlinedefined);
    settabss(L, "what", ar.what);
  }
  if (strchr(options, 'l'))
    settabsi(L, "currentline", ar.currentline);
  if (strchr(options, 'u')) {
    settabsi(L, "nups", ar.nups);
    settabsi(L, "nparams", ar.nparams);
    settabsb(L, "isvararg", ar.isvararg);
  }
  if (strchr(options, 'n')) {
    settabss(L, "name", ar.name);
    settabss(L, "namewhat", ar.namewhat);
  }
  if (strchr(options, 't'))
    settabsb(L, "istailcall", ar.istailcall);
  if (strchr(options, 'L'))
    treatstackoption(L, L1, "activelines");
  if (strchr(options, 'f'))
    treatstackoption(L, L1, "func");
  return 1;
}
