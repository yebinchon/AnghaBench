
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_block {int dummy; } ;
typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ LUA_TNUMBER ;
 scalar_t__ lua_isinteger (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int pack_one (int *,struct write_block*,int,int) ;
 int wb_nil (struct write_block*) ;

__attribute__((used)) static void
wb_table_hash(lua_State *L, struct write_block * wb, int index, int depth, int array_size) {
 lua_pushnil(L);
 while (lua_next(L, index) != 0) {
  if (lua_type(L,-2) == LUA_TNUMBER) {
   if (lua_isinteger(L, -2)) {
    lua_Integer x = lua_tointeger(L,-2);
    if (x>0 && x<=array_size) {
     lua_pop(L,1);
     continue;
    }
   }
  }
  pack_one(L,wb,-2,depth);
  pack_one(L,wb,-1,depth);
  lua_pop(L, 1);
 }
 wb_nil(wb);
}
