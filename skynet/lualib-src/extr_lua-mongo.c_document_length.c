
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * document ;


 int get_length (int *) ;
 int luaL_error (int *,char*,...) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_isuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawlen (int *,int) ;
 int * lua_touserdata (int *,int) ;

__attribute__((used)) static int
document_length(lua_State *L) {
 if (lua_isuserdata(L, 3)) {
  document doc = lua_touserdata(L,3);
  return get_length(doc);
 }
 if (lua_istable(L,3)) {
  int total = 0;
  int s = lua_rawlen(L,3);
  int i;
  for (i=1;i<=s;i++) {
   lua_rawgeti(L, 3, i);
   document doc = lua_touserdata(L,-1);
   if (doc == ((void*)0)) {
    lua_pop(L,1);
    return luaL_error(L, "Invalid document at %d", i);
   } else {
    total += get_length(doc);
    lua_pop(L,1);
   }
  }
  return total;
 }
 return luaL_error(L, "Insert need documents");
}
