
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int dummy; } ;
typedef int lua_State ;


 int BSON_ARRAY ;
 int BSON_DOCUMENT ;
 scalar_t__ LUA_TNIL ;
 int MAX_DEPTH ;
 int append_key (struct bson*,int *,int ,char const*,size_t) ;
 scalar_t__ is_rawarray (int *) ;
 int luaL_checkstack (int *,int,int *) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_getmetafield (int *,int,char*) ;
 int lua_call (int *,int,int) ;
 int lua_isinteger (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 size_t lua_rawlen (int *,int) ;
 size_t lua_tointeger (int *,int) ;
 int pack_array (int *,struct bson*,int,size_t) ;
 int pack_meta_dict (int *,struct bson*,int) ;
 int pack_simple_dict (int *,struct bson*,int) ;

__attribute__((used)) static void
append_table(struct bson *bs, lua_State *L, const char *key, size_t sz, int depth) {
 if (depth > MAX_DEPTH) {
  luaL_error(L, "Too depth while encoding bson");
 }
 luaL_checkstack(L, 16, ((void*)0));
 if (luaL_getmetafield(L, -1, "__len") != LUA_TNIL) {
  lua_pushvalue(L, -2);
  lua_call(L, 1, 1);
  if (!lua_isinteger(L, -1)) {
   luaL_error(L, "__len should return integer");
  }
  size_t len = lua_tointeger(L, -1);
  lua_pop(L, 1);
  append_key(bs, L, BSON_ARRAY, key, sz);
  pack_array(L, bs, depth, len);
 } else if (luaL_getmetafield(L, -1, "__pairs") != LUA_TNIL) {
  append_key(bs, L, BSON_DOCUMENT, key, sz);
  pack_meta_dict(L, bs, depth);
 } else if (is_rawarray(L)) {
  append_key(bs, L, BSON_ARRAY, key, sz);
  pack_array(L, bs, depth, lua_rawlen(L, -1));
 } else {
  append_key(bs, L, BSON_DOCUMENT, key, sz);
  pack_simple_dict(L, bs, depth);
 }
}
