
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
typedef int lua_State ;
typedef int lua_Integer ;
typedef int int32_t ;


 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnumber (int *,double) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 char* skynet_command (struct skynet_context*,char const*,char const*) ;
 int sprintf (char*,char*,int) ;
 double strtod (char const*,char**) ;
 int strtoll (char const*,char**,int ) ;

__attribute__((used)) static int
lintcommand(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 const char * cmd = luaL_checkstring(L,1);
 const char * result;
 const char * parm = ((void*)0);
 char tmp[64];
 if (lua_gettop(L) == 2) {
  if (lua_isnumber(L, 2)) {
   int32_t n = (int32_t)luaL_checkinteger(L,2);
   sprintf(tmp, "%d", n);
   parm = tmp;
  } else {
   parm = luaL_checkstring(L,2);
  }
 }

 result = skynet_command(context, cmd, parm);
 if (result) {
  char *endptr = ((void*)0);
  lua_Integer r = strtoll(result, &endptr, 0);
  if (endptr == ((void*)0) || *endptr != '\0') {

   double n = strtod(result, &endptr);
   if (endptr == ((void*)0) || *endptr != '\0') {
    return luaL_error(L, "Invalid result %s", result);
   } else {
    lua_pushnumber(L, n);
   }
  } else {
   lua_pushinteger(L, r);
  }
  return 1;
 }
 return 0;
}
