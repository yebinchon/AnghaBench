
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int dummy; } ;
struct sproto {int dummy; } ;
typedef int lua_State ;


 int LUA_TNUMBER ;
 int SPROTO_REQUEST ;
 int SPROTO_RESPONSE ;
 int luaL_argerror (int *,int,char*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,struct sproto_type*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_tointeger (int *,int) ;
 char* lua_tostring (int *,int) ;
 struct sproto* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 char* sproto_protoname (struct sproto*,int) ;
 struct sproto_type* sproto_protoquery (struct sproto*,int,int ) ;
 scalar_t__ sproto_protoresponse (struct sproto*,int) ;
 int sproto_prototag (struct sproto*,char const*) ;

__attribute__((used)) static int
lprotocol(lua_State *L) {
 struct sproto * sp = lua_touserdata(L, 1);
 struct sproto_type * request;
 struct sproto_type * response;
 int t;
 int tag;
 if (sp == ((void*)0)) {
  return luaL_argerror(L, 1, "Need a sproto_type object");
 }
 t = lua_type(L,2);
 if (t == LUA_TNUMBER) {
  const char * name;
  tag = lua_tointeger(L, 2);
  name = sproto_protoname(sp, tag);
  if (name == ((void*)0))
   return 0;
  lua_pushstring(L, name);
 } else {
  const char * name = lua_tostring(L, 2);
  if (name == ((void*)0)) {
   return luaL_argerror(L, 2, "Should be number or string");
  }
  tag = sproto_prototag(sp, name);
  if (tag < 0)
   return 0;
  lua_pushinteger(L, tag);
 }
 request = sproto_protoquery(sp, tag, SPROTO_REQUEST);
 if (request == ((void*)0)) {
  lua_pushnil(L);
 } else {
  lua_pushlightuserdata(L, request);
 }
 response = sproto_protoquery(sp, tag, SPROTO_RESPONSE);
 if (response == ((void*)0)) {
  if (sproto_protoresponse(sp, tag)) {
   lua_pushlightuserdata(L, ((void*)0));
  } else {
   lua_pushnil(L);
  }
 } else {
  lua_pushlightuserdata(L, response);
 }
 return 3;
}
