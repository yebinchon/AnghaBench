
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;
 int memcpy (void*,char const*,size_t) ;
 void* skynet_malloc (size_t) ;

__attribute__((used)) static int
lstr2p(lua_State *L) {
 size_t sz = 0;
 const char * str = luaL_checklstring(L,1,&sz);
 void *ptr = skynet_malloc(sz);
 memcpy(ptr, str, sz);
 lua_pushlightuserdata(L, ptr);
 lua_pushinteger(L, (int)sz);
 return 2;
}
