
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int copyfromdata (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_rawlen (int *,int) ;

__attribute__((used)) static int
llen(lua_State *L) {
 copyfromdata(L);
 lua_pushinteger(L, lua_rawlen(L, 1));
 return 1;
}
