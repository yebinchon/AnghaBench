
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int copyfromdata (int *) ;
 int lnext ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int
lpairs(lua_State *L) {
 copyfromdata(L);
 lua_pushcfunction(L, lnext);
 lua_pushvalue(L, 1);
 lua_pushnil(L);
 return 3;
}
