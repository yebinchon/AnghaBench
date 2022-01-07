
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int skynet_free (void*) ;

__attribute__((used)) static int
ldrop(lua_State *L) {
 void * msg = lua_touserdata(L,1);
 luaL_checkinteger(L,2);
 skynet_free(msg);
 return 0;
}
