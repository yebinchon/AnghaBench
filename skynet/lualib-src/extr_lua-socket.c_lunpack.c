
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_socket_message {scalar_t__ type; scalar_t__ id; scalar_t__ ud; int * buffer; } ;
typedef int lua_State ;


 scalar_t__ SKYNET_SOCKET_TYPE_UDP ;
 int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushlstring (int *,char const*,int) ;
 struct skynet_socket_message* lua_touserdata (int *,int) ;
 char* skynet_socket_udp_address (struct skynet_socket_message*,int*) ;

__attribute__((used)) static int
lunpack(lua_State *L) {
 struct skynet_socket_message *message = lua_touserdata(L,1);
 int size = luaL_checkinteger(L,2);

 lua_pushinteger(L, message->type);
 lua_pushinteger(L, message->id);
 lua_pushinteger(L, message->ud);
 if (message->buffer == ((void*)0)) {
  lua_pushlstring(L, (char *)(message+1),size - sizeof(*message));
 } else {
  lua_pushlightuserdata(L, message->buffer);
 }
 if (message->type == SKYNET_SOCKET_TYPE_UDP) {
  int addrsz = 0;
  const char * addrstring = skynet_socket_udp_address(message, &addrsz);
  if (addrstring) {
   lua_pushlstring(L, addrstring, addrsz);
   return 5;
  }
 }
 return 4;
}
