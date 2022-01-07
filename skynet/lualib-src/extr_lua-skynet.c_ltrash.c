
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;




 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,int ) ;
 void* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 int skynet_free (void*) ;

__attribute__((used)) static int
ltrash(lua_State *L) {
 int t = lua_type(L,1);
 switch (t) {
 case 128: {
  break;
 }
 case 129: {
  void * msg = lua_touserdata(L,1);
  luaL_checkinteger(L,2);
  skynet_free(msg);
  break;
 }
 default:
  luaL_error(L, "skynet.trash invalid param %s", lua_typename(L,t));
 }

 return 0;
}
