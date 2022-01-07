
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_block {int dummy; } ;
typedef int lua_State ;


 int LUA_MINSTACK ;
 scalar_t__ LUA_TNIL ;
 int luaL_checkstack (int *,int ,int *) ;
 scalar_t__ luaL_getmetafield (int *,int,char*) ;
 int lua_gettop (int *) ;
 int wb_table_array (int *,struct write_block*,int,int) ;
 int wb_table_hash (int *,struct write_block*,int,int,int) ;
 int wb_table_metapairs (int *,struct write_block*,int,int) ;

__attribute__((used)) static void
wb_table(lua_State *L, struct write_block *wb, int index, int depth) {
 luaL_checkstack(L, LUA_MINSTACK, ((void*)0));
 if (index < 0) {
  index = lua_gettop(L) + index + 1;
 }
 if (luaL_getmetafield(L, index, "__pairs") != LUA_TNIL) {
  wb_table_metapairs(L, wb, index, depth);
 } else {
  int array_size = wb_table_array(L, wb, index, depth);
  wb_table_hash(L, wb, index, depth, array_size);
 }
}
