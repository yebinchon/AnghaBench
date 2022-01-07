
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {int offset; int size; struct buffer_node* head; } ;
struct buffer_node {int sz; struct buffer_node* next; } ;
typedef int lua_State ;


 scalar_t__ check_sep (struct buffer_node*,int,char const*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_istable (int *,int) ;
 int lua_pushboolean (int *,int) ;
 struct socket_buffer* lua_touserdata (int *,int) ;
 int pop_lstring (int *,struct socket_buffer*,int,size_t) ;

__attribute__((used)) static int
lreadline(lua_State *L) {
 struct socket_buffer * sb = lua_touserdata(L, 1);
 if (sb == ((void*)0)) {
  return luaL_error(L, "Need buffer object at param 1");
 }

 bool check = !lua_istable(L, 2);
 size_t seplen = 0;
 const char *sep = luaL_checklstring(L,3,&seplen);
 int i;
 struct buffer_node *current = sb->head;
 if (current == ((void*)0))
  return 0;
 int from = sb->offset;
 int bytes = current->sz - from;
 for (i=0;i<=sb->size - (int)seplen;i++) {
  if (check_sep(current, from, sep, seplen)) {
   if (check) {
    lua_pushboolean(L,1);
   } else {
    pop_lstring(L, sb, i+seplen, seplen);
    sb->size -= i+seplen;
   }
   return 1;
  }
  ++from;
  --bytes;
  if (bytes == 0) {
   current = current->next;
   from = 0;
   if (current == ((void*)0))
    break;
   bytes = current->sz;
  }
 }
 return 0;
}
