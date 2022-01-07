
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int size; int ptr; } ;
typedef int lua_State ;


 scalar_t__ LUA_TNIL ;
 scalar_t__ luaL_getmetafield (int *,int,char*) ;
 void* lua_newuserdata (int *,int ) ;
 int lua_settop (int *,int) ;
 struct bson* lua_touserdata (int *,int) ;
 int memcpy (void*,int ,int ) ;
 int pack_meta_dict (int *,struct bson*,int ) ;
 int pack_simple_dict (int *,struct bson*,int ) ;

__attribute__((used)) static int
encode_bson(lua_State *L) {
 struct bson *b = lua_touserdata(L, 2);
 lua_settop(L, 1);
 if (luaL_getmetafield(L, -1, "__pairs") != LUA_TNIL) {
  pack_meta_dict(L, b, 0);
 } else {
  pack_simple_dict(L, b, 0);
 }
 void * ud = lua_newuserdata(L, b->size);
 memcpy(ud, b->ptr, b->size);
 return 1;
}
