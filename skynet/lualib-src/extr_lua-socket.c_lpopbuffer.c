
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {int size; } ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 struct socket_buffer* lua_touserdata (int *,int) ;
 int pop_lstring (int *,struct socket_buffer*,int,int ) ;

__attribute__((used)) static int
lpopbuffer(lua_State *L) {
 struct socket_buffer * sb = lua_touserdata(L, 1);
 if (sb == ((void*)0)) {
  return luaL_error(L, "Need buffer object at param 1");
 }
 luaL_checktype(L,2,LUA_TTABLE);
 int sz = luaL_checkinteger(L,3);
 if (sb->size < sz || sz == 0) {
  lua_pushnil(L);
 } else {
  pop_lstring(L,sb,sz,0);
  sb->size -= sz;
 }
 lua_pushinteger(L, sb->size);

 return 2;
}
