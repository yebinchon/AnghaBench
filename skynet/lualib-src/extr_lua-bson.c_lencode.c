
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int dummy; } ;
typedef int lua_State ;


 scalar_t__ LUA_OK ;
 int LUA_TTABLE ;
 int bson_create (struct bson*) ;
 int bson_destroy (struct bson*) ;
 int bson_meta (int *) ;
 int encode_bson ;
 int luaL_checktype (int *,int,int ) ;
 int lua_error (int *) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,struct bson*) ;
 int lua_pushvalue (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int
lencode(lua_State *L) {
 struct bson b;
 lua_settop(L,1);
 luaL_checktype(L, 1, LUA_TTABLE);
 bson_create(&b);
 lua_pushcfunction(L, encode_bson);
 lua_pushvalue(L, 1);
 lua_pushlightuserdata(L, &b);
 if (lua_pcall(L, 2, 1, 0) != LUA_OK) {
  bson_destroy(&b);
  return lua_error(L);
 }
 bson_destroy(&b);
 bson_meta(L);
 return 1;
}
