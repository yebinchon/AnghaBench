
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ docall (int *,int ,int) ;
 scalar_t__ luaL_loadbuffer (int *,char const*,int ,char const*) ;
 int report (int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int dostring(lua_State *L, const char *s, const char *name)
{
  int status = luaL_loadbuffer(L, s, strlen(s), name) || docall(L, 0, 1);
  return report(L, status);
}
