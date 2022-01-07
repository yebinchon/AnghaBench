
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushlstring (int *,void*,size_t) ;
 size_t lua_rawlen (int *,int) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static int
ltostring(lua_State *L) {
 size_t sz = lua_rawlen(L, 1);
 void * ud = lua_touserdata(L,1);
 lua_pushlstring(L, ud, sz);
 return 1;
}
