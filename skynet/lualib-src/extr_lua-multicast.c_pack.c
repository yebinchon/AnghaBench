
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mc_package {void* data; scalar_t__ size; scalar_t__ reference; } ;
typedef int ret ;
typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,struct mc_package**) ;
 void* skynet_malloc (int) ;

__attribute__((used)) static int
pack(lua_State *L, void *data, size_t size) {
 struct mc_package * pack = skynet_malloc(sizeof(struct mc_package));
 pack->reference = 0;
 pack->size = (uint32_t)size;
 pack->data = data;
 struct mc_package ** ret = skynet_malloc(sizeof(*ret));
 *ret = pack;
 lua_pushlightuserdata(L, ret);
 lua_pushinteger(L, sizeof(ret));
 return 2;
}
