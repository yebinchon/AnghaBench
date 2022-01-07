
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int LUA_REGISTRYINDEX ;
 int fputs (char const*,int ) ;
 int lua_call (int *,int ,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_gettop (int *) ;
 int lua_remove (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;
 char* lua_tostring (int *,int) ;
 int putc (char,int ) ;
 int stdout ;

__attribute__((used)) static void print_jit_status(lua_State *L)
{
  int n;
  const char *s;
  lua_getfield(L, LUA_REGISTRYINDEX, "_LOADED");
  lua_getfield(L, -1, "jit");
  lua_remove(L, -2);
  lua_getfield(L, -1, "status");
  lua_remove(L, -2);
  n = lua_gettop(L);
  lua_call(L, 0, LUA_MULTRET);
  fputs(lua_toboolean(L, n) ? "JIT: ON" : "JIT: OFF", stdout);
  for (n++; (s = lua_tostring(L, n)); n++) {
    putc(' ', stdout);
    fputs(s, stdout);
  }
  putc('\n', stdout);
}
