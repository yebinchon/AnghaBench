
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {int * tail; struct buffer_node* head; scalar_t__ offset; } ;
struct buffer_node {scalar_t__ sz; int * msg; struct buffer_node* next; } ;
typedef int lua_State ;


 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,struct buffer_node*) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;
 struct buffer_node* lua_touserdata (int *,int) ;
 int skynet_free (int *) ;

__attribute__((used)) static void
return_free_node(lua_State *L, int pool, struct socket_buffer *sb) {
 struct buffer_node *free_node = sb->head;
 sb->offset = 0;
 sb->head = free_node->next;
 if (sb->head == ((void*)0)) {
  sb->tail = ((void*)0);
 }
 lua_rawgeti(L,pool,1);
 free_node->next = lua_touserdata(L,-1);
 lua_pop(L,1);
 skynet_free(free_node->msg);
 free_node->msg = ((void*)0);

 free_node->sz = 0;
 lua_pushlightuserdata(L, free_node);
 lua_rawseti(L, pool, 1);
}
