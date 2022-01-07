
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int INT32_MAX ;
 int LUA_TNUMBER ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_createtable (int *,int,int ) ;
 int lua_pushinteger (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int packreq_multi (int *,int,void*,int) ;
 int packreq_number (int *,int,void*,int,int) ;
 int packreq_string (int *,int,void*,int,int) ;
 int skynet_free (void*) ;

__attribute__((used)) static int
packrequest(lua_State *L, int is_push) {
 void *msg = lua_touserdata(L,3);
 if (msg == ((void*)0)) {
  return luaL_error(L, "Invalid request message");
 }
 uint32_t sz = (uint32_t)luaL_checkinteger(L,4);
 int session = luaL_checkinteger(L,2);
 if (session <= 0) {
  skynet_free(msg);
  return luaL_error(L, "Invalid request session %d", session);
 }
 int addr_type = lua_type(L,1);
 int multipak;
 if (addr_type == LUA_TNUMBER) {
  multipak = packreq_number(L, session, msg, sz, is_push);
 } else {
  multipak = packreq_string(L, session, msg, sz, is_push);
 }
 uint32_t new_session = (uint32_t)session + 1;
 if (new_session > INT32_MAX) {
  new_session = 1;
 }
 lua_pushinteger(L, new_session);
 if (multipak) {
  lua_createtable(L, multipak, 0);
  packreq_multi(L, session, msg, sz);
  skynet_free(msg);
  return 3;
 } else {
  skynet_free(msg);
  return 2;
 }
}
