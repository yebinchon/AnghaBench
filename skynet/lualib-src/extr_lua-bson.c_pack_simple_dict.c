
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bson {scalar_t__ size; } ;
typedef int lua_State ;


 scalar_t__ lua_next (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_type (int *,int) ;
 int pack_dict_data (int *,struct bson*,int,int) ;
 int reserve_length (struct bson*) ;
 int write_byte (struct bson*,int ) ;
 int write_length (struct bson*,scalar_t__,int) ;

__attribute__((used)) static void
pack_simple_dict(lua_State *L, struct bson *b, int depth) {
 int length = reserve_length(b);
 lua_pushnil(L);
 while(lua_next(L,-2) != 0) {
  int kt = lua_type(L, -2);
  pack_dict_data(L, b, depth, kt);
 }
 write_byte(b,0);
 write_length(b, b->size - length, length);
}
