
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {int dummy; } ;
typedef int lua_State ;




 int append_one (struct bson*,int *,char const*,size_t,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_pop (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_typename (int *,int) ;

__attribute__((used)) static void
pack_dict_data(lua_State *L, struct bson *b, int depth, int kt) {
 const char * key = ((void*)0);
 size_t sz;
 switch(kt) {
 case 129:
  luaL_error(L, "Bson dictionary's key can't be number");
  break;
 case 128:
  key = lua_tolstring(L,-2,&sz);
  append_one(b, L, key, sz, depth);
  lua_pop(L,1);
  break;
 default:
  luaL_error(L, "Invalid key type : %s", lua_typename(L, kt));
  return;
 }
}
