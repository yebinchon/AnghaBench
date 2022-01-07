
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_typename (int *,int) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isboolean (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;
 int lua_topointer (int *,int) ;
 char* lua_tostring (int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int print(lua_State *L)
{
 int n=lua_gettop(L);
 int i;
 for (i=1; i<=n; i++)
 {
  if (i>1) printf("\t");
  if (lua_isstring(L,i))
   printf("%s",lua_tostring(L,i));
  else if (lua_isnil(L,i))
   printf("%s","nil");
  else if (lua_isboolean(L,i))
   printf("%s",lua_toboolean(L,i) ? "true" : "false");
  else
   printf("%s:%p",luaL_typename(L,i),lua_topointer(L,i));
 }
 printf("\n");
 return 0;
}
