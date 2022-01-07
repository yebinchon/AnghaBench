
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 char* skynet_command (struct skynet_context*,char const*,char const*) ;

__attribute__((used)) static int
laddresscommand(lua_State *L) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 const char * cmd = luaL_checkstring(L,1);
 const char * result;
 const char * parm = ((void*)0);
 if (lua_gettop(L) == 2) {
  parm = luaL_checkstring(L,2);
 }
 result = skynet_command(context, cmd, parm);
 if (result && result[0] == ':') {
  int i;
  uint32_t addr = 0;
  for (i=1;result[i];i++) {
   int c = result[i];
   if (c>='0' && c<='9') {
    c = c - '0';
   } else if (c>='a' && c<='f') {
    c = c - 'a' + 10;
   } else if (c>='A' && c<='F') {
    c = c - 'A' + 10;
   } else {
    return 0;
   }
   addr = addr * 16 + c;
  }
  lua_pushinteger(L, addr);
  return 1;
 }
 return 0;
}
