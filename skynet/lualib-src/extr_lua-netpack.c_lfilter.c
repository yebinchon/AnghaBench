
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct skynet_socket_message {char* buffer; int type; int ud; int id; } ;
typedef int lua_State ;
 int TYPE_CLOSE ;
 int TYPE_ERROR ;
 int TYPE_OPEN ;
 int TYPE_WARNING ;
 int assert (int) ;
 int close_uncomplete (int *,int ) ;
 int filter_data (int *,int ,int *,int ) ;
 int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushvalue (int *,int ) ;
 int lua_settop (int *,int) ;
 struct skynet_socket_message* lua_touserdata (int *,int) ;
 int lua_upvalueindex (int ) ;
 int pushstring (int *,char*,int) ;

__attribute__((used)) static int
lfilter(lua_State *L) {
 struct skynet_socket_message *message = lua_touserdata(L,2);
 int size = luaL_checkinteger(L,3);
 char * buffer = message->buffer;
 if (buffer == ((void*)0)) {
  buffer = (char *)(message+1);
  size -= sizeof(*message);
 } else {
  size = -1;
 }

 lua_settop(L, 1);

 switch(message->type) {
 case 130:

  assert(size == -1);
  return filter_data(L, message->id, (uint8_t *)buffer, message->ud);
 case 131:

  return 1;
 case 132:

  close_uncomplete(L, message->id);
  lua_pushvalue(L, lua_upvalueindex(TYPE_CLOSE));
  lua_pushinteger(L, message->id);
  return 3;
 case 133:
  lua_pushvalue(L, lua_upvalueindex(TYPE_OPEN));

  lua_pushinteger(L, message->ud);
  pushstring(L, buffer, size);
  return 4;
 case 129:

  close_uncomplete(L, message->id);
  lua_pushvalue(L, lua_upvalueindex(TYPE_ERROR));
  lua_pushinteger(L, message->id);
  pushstring(L, buffer, size);
  return 4;
 case 128:
  lua_pushvalue(L, lua_upvalueindex(TYPE_WARNING));
  lua_pushinteger(L, message->id);
  lua_pushinteger(L, message->ud);
  return 4;
 default:

  return 1;
 }
}
