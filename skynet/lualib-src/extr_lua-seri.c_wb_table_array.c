
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct write_block {int dummy; } ;
typedef int lua_State ;


 int COMBINE_TYPE (int ,int) ;
 int MAX_COOKIE ;
 int TYPE_TABLE ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawlen (int *,int) ;
 int pack_one (int *,struct write_block*,int,int) ;
 int wb_integer (struct write_block*,int) ;
 int wb_push (struct write_block*,int *,int) ;

__attribute__((used)) static int
wb_table_array(lua_State *L, struct write_block * wb, int index, int depth) {
 int array_size = lua_rawlen(L,index);
 if (array_size >= MAX_COOKIE-1) {
  uint8_t n = COMBINE_TYPE(TYPE_TABLE, MAX_COOKIE-1);
  wb_push(wb, &n, 1);
  wb_integer(wb, array_size);
 } else {
  uint8_t n = COMBINE_TYPE(TYPE_TABLE, array_size);
  wb_push(wb, &n, 1);
 }

 int i;
 for (i=1;i<=array_size;i++) {
  lua_rawgeti(L,index,i);
  pack_one(L, wb, -1, depth);
  lua_pop(L,1);
 }

 return array_size;
}
