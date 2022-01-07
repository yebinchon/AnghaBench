
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {scalar_t__ size; } ;
typedef int lua_State ;


 int LUA_TNIL ;
 int lua_call (int *,int,int) ;
 int lua_copy (int *,int,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_type (int *,int) ;
 int pack_dict_data (int *,struct bson*,int,int) ;
 int reserve_length (struct bson*) ;
 int write_byte (struct bson*,int ) ;
 int write_length (struct bson*,scalar_t__,int) ;

__attribute__((used)) static void
pack_meta_dict(lua_State *L, struct bson *b, int depth) {
 int length = reserve_length(b);

 lua_pushvalue(L, -2);
 lua_call(L, 1, 3);
 for(;;) {
  lua_pushvalue(L, -2);
  lua_pushvalue(L, -2);
  lua_copy(L, -5, -3);
  lua_call(L, 2, 2);

  int kt = lua_type(L, -2);
  if (kt == LUA_TNIL) {
   lua_pop(L, 4);
   break;
  }
  pack_dict_data(L, b, depth, kt);
 }
 write_byte(b,0);
 write_length(b, b->size - length, length);
}
