
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushstring (int *,char const*) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 char* skynet_command (struct skynet_context*,char const*,char const*) ;

__attribute__((used)) static int
lcommand(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 const char * cmd = luaL_checkstring(L,1);
 const char * result;
 const char * parm = ((void*)0);
 if (lua_gettop(L) == 2) {
  parm = luaL_checkstring(L,2);
 }

 result = skynet_command(context, cmd, parm);
 if (result) {
  lua_pushstring(L, result);
  return 1;
 }
 return 0;
}
