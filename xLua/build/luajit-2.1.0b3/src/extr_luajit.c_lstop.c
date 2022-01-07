
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int luaL_where (int *,int ) ;
 int lua_error (int *) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_sethook (int *,int *,int ,int ) ;
 int lua_tostring (int *,int) ;

__attribute__((used)) static void lstop(lua_State *L, lua_Debug *ar)
{
  (void)ar;
  lua_sethook(L, ((void*)0), 0, 0);

  luaL_where(L, 0);
  lua_pushfstring(L, "%sinterrupted!", lua_tostring(L, -1));
  lua_error(L);
}
