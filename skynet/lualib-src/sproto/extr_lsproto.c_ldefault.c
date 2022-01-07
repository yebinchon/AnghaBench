
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {int dummy; } ;
typedef int lua_State ;
typedef int dummy ;


 int encode_default ;
 int luaL_argerror (int *,int,char*) ;
 int lua_insert (int *,int) ;
 int lua_newtable (int *) ;
 void* lua_newuserdata (int *,int) ;
 int lua_replace (int *,int) ;
 struct sproto_type* lua_touserdata (int *,int) ;
 int sproto_encode (struct sproto_type*,void*,int,int ,int *) ;

__attribute__((used)) static int
ldefault(lua_State *L) {
 int ret;

 char dummy[64];
 struct sproto_type * st = lua_touserdata(L, 1);
 if (st == ((void*)0)) {
  return luaL_argerror(L, 1, "Need a sproto_type object");
 }
 lua_newtable(L);
 ret = sproto_encode(st, dummy, sizeof(dummy), encode_default, L);
 if (ret<0) {

  int sz = sizeof(dummy) * 2;
  void * tmp = lua_newuserdata(L, sz);
  lua_insert(L, -2);
  for (;;) {
   ret = sproto_encode(st, tmp, sz, encode_default, L);
   if (ret >= 0)
    break;
   sz *= 2;
   tmp = lua_newuserdata(L, sz);
   lua_replace(L, -3);
  }
 }
 return 1;
}
