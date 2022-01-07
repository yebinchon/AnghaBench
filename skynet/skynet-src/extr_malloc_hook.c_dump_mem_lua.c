
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_data {scalar_t__ handle; scalar_t__ allocated; } ;
typedef int lua_State ;
typedef int lua_Integer ;


 int SLOT_SIZE ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_rawseti (int *,int,int ) ;
 struct mem_data* mem_stats ;

int
dump_mem_lua(lua_State *L) {
 int i;
 lua_newtable(L);
 for(i=0; i<SLOT_SIZE; i++) {
  struct mem_data* data = &mem_stats[i];
  if(data->handle != 0 && data->allocated != 0) {
   lua_pushinteger(L, data->allocated);
   lua_rawseti(L, -2, (lua_Integer)data->handle);
  }
 }
 return 1;
}
