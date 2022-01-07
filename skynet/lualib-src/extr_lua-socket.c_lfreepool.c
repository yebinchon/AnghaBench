
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_node {int * msg; } ;
typedef int lua_State ;


 int lua_rawlen (int *,int) ;
 struct buffer_node* lua_touserdata (int *,int) ;
 int skynet_free (int *) ;

__attribute__((used)) static int
lfreepool(lua_State *L) {
 struct buffer_node * pool = lua_touserdata(L, 1);
 int sz = lua_rawlen(L,1) / sizeof(*pool);
 int i;
 for (i=0;i<sz;i++) {
  struct buffer_node *node = &pool[i];
  if (node->msg) {
   skynet_free(node->msg);
   node->msg = ((void*)0);
  }
 }
 return 0;
}
