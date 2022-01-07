
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;
typedef int lua_State ;



 int LUA_TNUMBER ;

 int PTYPE_TAG_ALLOCSESSION ;
 int PTYPE_TAG_DONTCOPY ;
 char* get_dest_string (int *,int) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,...) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 void* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int lua_upvalueindex (int) ;
 int skynet_send (struct skynet_context*,int,scalar_t__,int,int,void*,int) ;
 int skynet_sendname (struct skynet_context*,int,char const*,int,int,void*,int) ;

__attribute__((used)) static int
send_message(lua_State *L, int source, int idx_type) {
 struct skynet_context * context = lua_touserdata(L, lua_upvalueindex(1));
 uint32_t dest = (uint32_t)lua_tointeger(L, 1);
 const char * dest_string = ((void*)0);
 if (dest == 0) {
  if (lua_type(L,1) == LUA_TNUMBER) {
   return luaL_error(L, "Invalid service address 0");
  }
  dest_string = get_dest_string(L, 1);
 }

 int type = luaL_checkinteger(L, idx_type+0);
 int session = 0;
 if (lua_isnil(L,idx_type+1)) {
  type |= PTYPE_TAG_ALLOCSESSION;
 } else {
  session = luaL_checkinteger(L,idx_type+1);
 }

 int mtype = lua_type(L,idx_type+2);
 switch (mtype) {
 case 128: {
  size_t len = 0;
  void * msg = (void *)lua_tolstring(L,idx_type+2,&len);
  if (len == 0) {
   msg = ((void*)0);
  }
  if (dest_string) {
   session = skynet_sendname(context, source, dest_string, type, session , msg, len);
  } else {
   session = skynet_send(context, source, dest, type, session , msg, len);
  }
  break;
 }
 case 129: {
  void * msg = lua_touserdata(L,idx_type+2);
  int size = luaL_checkinteger(L,idx_type+3);
  if (dest_string) {
   session = skynet_sendname(context, source, dest_string, type | PTYPE_TAG_DONTCOPY, session, msg, size);
  } else {
   session = skynet_send(context, source, dest, type | PTYPE_TAG_DONTCOPY, session, msg, size);
  }
  break;
 }
 default:
  luaL_error(L, "invalid param %s", lua_typename(L, lua_type(L,idx_type+2)));
 }
 if (session < 0) {
  if (session == -2) {

   lua_pushboolean(L, 0);
   return 1;
  }


  return 0;
 }
 lua_pushinteger(L,session);
 return 1;
}
