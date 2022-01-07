
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int dummy; } ;
typedef int lua_State ;


 scalar_t__ LUA_OK ;
 int bson_create (struct bson*) ;
 int bson_destroy (struct bson*) ;
 int bson_meta (int *) ;
 int encode_bson_byorder ;
 int luaL_error (int *,char*) ;
 int lua_error (int *) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,struct bson*) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int) ;

__attribute__((used)) static int
lencode_order(lua_State *L) {
 struct bson b;
 int n = lua_gettop(L);
 if (n%2 != 0) {
  return luaL_error(L, "Invalid ordered dict");
 }
 bson_create(&b);
 lua_pushvalue(L, 1);
 lua_pushcfunction(L, encode_bson_byorder);
 lua_replace(L, 1);
 lua_pushlightuserdata(L, &b);
 if (lua_pcall(L, n+1, 1, 0) != LUA_OK) {
  bson_destroy(&b);
  return lua_error(L);
 }
 bson_destroy(&b);
 bson_meta(L);
 return 1;
}
