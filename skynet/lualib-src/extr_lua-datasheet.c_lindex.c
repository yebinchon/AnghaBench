
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int copyfromdata (int *) ;
 int lua_rawget (int *,int) ;

__attribute__((used)) static int
lindex(lua_State *L) {
 copyfromdata(L);
 lua_rawget(L, 1);
 return 1;
}
