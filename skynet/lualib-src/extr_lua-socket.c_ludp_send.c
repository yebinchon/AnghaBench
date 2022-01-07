
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_sendbuffer {int id; } ;
struct skynet_context {int dummy; } ;
typedef int lua_State ;


 int get_buffer (int *,int,struct socket_sendbuffer*) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 struct skynet_context* lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int skynet_socket_udp_sendbuffer (struct skynet_context*,char const*,struct socket_sendbuffer*) ;

__attribute__((used)) static int
ludp_send(lua_State *L) {
 struct skynet_context * ctx = lua_touserdata(L, lua_upvalueindex(1));
 int id = luaL_checkinteger(L, 1);
 const char * address = luaL_checkstring(L, 2);
 struct socket_sendbuffer buf;
 buf.id = id;
 get_buffer(L, 3, &buf);
 int err = skynet_socket_udp_sendbuffer(ctx, address, &buf);

 lua_pushboolean(L, !err);

 return 1;
}
