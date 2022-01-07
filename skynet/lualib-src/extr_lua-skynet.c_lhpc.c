
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int get_time () ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int
lhpc(lua_State *L) {
 lua_pushinteger(L, get_time());
 return 1;
}
