
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {int offset; struct buffer_node* head; } ;
struct buffer_node {int sz; int msg; } ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int assert (struct buffer_node*) ;
 int luaL_addlstring (int *,int,int) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int lua_pushlstring (int *,int,int) ;
 int return_free_node (int *,int,struct socket_buffer*) ;

__attribute__((used)) static void
pop_lstring(lua_State *L, struct socket_buffer *sb, int sz, int skip) {
 struct buffer_node * current = sb->head;
 if (sz < current->sz - sb->offset) {
  lua_pushlstring(L, current->msg + sb->offset, sz-skip);
  sb->offset+=sz;
  return;
 }
 if (sz == current->sz - sb->offset) {
  lua_pushlstring(L, current->msg + sb->offset, sz-skip);
  return_free_node(L,2,sb);
  return;
 }

 luaL_Buffer b;
 luaL_buffinit(L, &b);
 for (;;) {
  int bytes = current->sz - sb->offset;
  if (bytes >= sz) {
   if (sz > skip) {
    luaL_addlstring(&b, current->msg + sb->offset, sz - skip);
   }
   sb->offset += sz;
   if (bytes == sz) {
    return_free_node(L,2,sb);
   }
   break;
  }
  int real_sz = sz - skip;
  if (real_sz > 0) {
   luaL_addlstring(&b, current->msg + sb->offset, (real_sz < bytes) ? real_sz : bytes);
  }
  return_free_node(L,2,sb);
  sz-=bytes;
  if (sz==0)
   break;
  current = sb->head;
  assert(current);
 }
 luaL_pushresult(&b);
}
