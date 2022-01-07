
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {scalar_t__ size; scalar_t__ head; } ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 struct socket_buffer* lua_touserdata (int *,int) ;
 int return_free_node (int *,int,struct socket_buffer*) ;

__attribute__((used)) static int
lclearbuffer(lua_State *L) {
 struct socket_buffer * sb = lua_touserdata(L, 1);
 if (sb == ((void*)0)) {
  if (lua_isnil(L, 1)) {
   return 0;
  }
  return luaL_error(L, "Need buffer object at param 1");
 }
 luaL_checktype(L,2,LUA_TTABLE);
 while(sb->head) {
  return_free_node(L,2,sb);
 }
 sb->size = 0;
 return 0;
}
