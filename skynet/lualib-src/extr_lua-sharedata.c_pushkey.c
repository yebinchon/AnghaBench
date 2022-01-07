
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {scalar_t__ keytype; int key; } ;
typedef int lua_State ;


 scalar_t__ KEYTYPE_INTEGER ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 char* lua_tolstring (int *,int ,size_t*) ;

__attribute__((used)) static void
pushkey(lua_State *L, lua_State *sL, struct node *n) {
 if (n->keytype == KEYTYPE_INTEGER) {
  lua_pushinteger(L, n->key);
 } else {
  size_t sz = 0;
  const char * str = lua_tolstring(sL, n->key, &sz);
  lua_pushlstring(L, str, sz);
 }
}
