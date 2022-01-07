
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;
 int memcpy (void*,char const*,int) ;
 void* skynet_malloc (int) ;

__attribute__((used)) static void
return_buffer(lua_State *L, const char * buffer, int sz) {
 void * ptr = skynet_malloc(sz);
 memcpy(ptr, buffer, sz);
 lua_pushlightuserdata(L, ptr);
 lua_pushinteger(L, sz);
}
