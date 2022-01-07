
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_node {struct buffer_node* next; scalar_t__ sz; int * msg; } ;
typedef int lua_State ;


 int lfreepool ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 struct buffer_node* lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static int
lnewpool(lua_State *L, int sz) {
 struct buffer_node * pool = lua_newuserdata(L, sizeof(struct buffer_node) * sz);
 int i;
 for (i=0;i<sz;i++) {
  pool[i].msg = ((void*)0);
  pool[i].sz = 0;
  pool[i].next = &pool[i+1];
 }
 pool[sz-1].next = ((void*)0);
 if (luaL_newmetatable(L, "buffer_pool")) {
  lua_pushcfunction(L, lfreepool);
  lua_setfield(L, -2, "__gc");
 }
 lua_setmetatable(L, -2);
 return 1;
}
