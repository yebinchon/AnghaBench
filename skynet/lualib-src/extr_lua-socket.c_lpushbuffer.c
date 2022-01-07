
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {int size; struct buffer_node* tail; struct buffer_node* head; } ;
struct buffer_node {char* msg; int sz; struct buffer_node* next; } ;
typedef int lua_State ;


 int LARGE_PAGE_NODE ;
 int LUA_TTABLE ;
 int assert (int ) ;
 int lnewpool (int *,int) ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,struct buffer_node*) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawlen (int *,int) ;
 int lua_rawseti (int *,int,int) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static int
lpushbuffer(lua_State *L) {
 struct socket_buffer *sb = lua_touserdata(L,1);
 if (sb == ((void*)0)) {
  return luaL_error(L, "need buffer object at param 1");
 }
 char * msg = lua_touserdata(L,3);
 if (msg == ((void*)0)) {
  return luaL_error(L, "need message block at param 3");
 }
 int pool_index = 2;
 luaL_checktype(L,pool_index,LUA_TTABLE);
 int sz = luaL_checkinteger(L,4);
 lua_rawgeti(L,pool_index,1);
 struct buffer_node * free_node = lua_touserdata(L,-1);
 lua_pop(L,1);
 if (free_node == ((void*)0)) {
  int tsz = lua_rawlen(L,pool_index);
  if (tsz == 0)
   tsz++;
  int size = 8;
  if (tsz <= LARGE_PAGE_NODE-3) {
   size <<= tsz;
  } else {
   size <<= LARGE_PAGE_NODE-3;
  }
  lnewpool(L, size);
  free_node = lua_touserdata(L,-1);
  lua_rawseti(L, pool_index, tsz+1);
 }
 lua_pushlightuserdata(L, free_node->next);
 lua_rawseti(L, pool_index, 1);
 free_node->msg = msg;
 free_node->sz = sz;
 free_node->next = ((void*)0);

 if (sb->head == ((void*)0)) {
  assert(sb->tail == ((void*)0));
  sb->head = sb->tail = free_node;
 } else {
  sb->tail->next = free_node;
  sb->tail = free_node;
 }
 sb->size += sz;

 lua_pushinteger(L, sb->size);

 return 1;
}
