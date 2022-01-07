
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {scalar_t__ size; scalar_t__ offset; struct buffer_node* head; } ;
struct buffer_node {scalar_t__ sz; scalar_t__ msg; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int LUA_TTABLE ;
 int luaL_addlstring (int *,scalar_t__,scalar_t__) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_pushresult (int *) ;
 struct socket_buffer* lua_touserdata (int *,int) ;
 int return_free_node (int *,int,struct socket_buffer*) ;

__attribute__((used)) static int
lreadall(lua_State *L) {
 struct socket_buffer * sb = lua_touserdata(L, 1);
 if (sb == ((void*)0)) {
  return luaL_error(L, "Need buffer object at param 1");
 }
 luaL_checktype(L,2,LUA_TTABLE);
 luaL_Buffer b;
 luaL_buffinit(L, &b);
 while(sb->head) {
  struct buffer_node *current = sb->head;
  luaL_addlstring(&b, current->msg + sb->offset, current->sz - sb->offset);
  return_free_node(L,2,sb);
 }
 luaL_pushresult(&b);
 sb->size = 0;
 return 1;
}
