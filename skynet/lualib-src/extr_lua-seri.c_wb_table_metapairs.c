
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct write_block {int dummy; } ;
typedef int lua_State ;


 int COMBINE_TYPE (int ,int ) ;
 int LUA_TNIL ;
 int TYPE_TABLE ;
 int lua_call (int *,int,int) ;
 int lua_copy (int *,int,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_type (int *,int) ;
 int pack_one (int *,struct write_block*,int,int) ;
 int wb_nil (struct write_block*) ;
 int wb_push (struct write_block*,int *,int) ;

__attribute__((used)) static void
wb_table_metapairs(lua_State *L, struct write_block *wb, int index, int depth) {
 uint8_t n = COMBINE_TYPE(TYPE_TABLE, 0);
 wb_push(wb, &n, 1);
 lua_pushvalue(L, index);
 lua_call(L, 1, 3);
 for(;;) {
  lua_pushvalue(L, -2);
  lua_pushvalue(L, -2);
  lua_copy(L, -5, -3);
  lua_call(L, 2, 2);
  int type = lua_type(L, -2);
  if (type == LUA_TNIL) {
   lua_pop(L, 4);
   break;
  }
  pack_one(L, wb, -2, depth);
  pack_one(L, wb, -1, depth);
  lua_pop(L, 1);
 }
 wb_nil(wb);
}
