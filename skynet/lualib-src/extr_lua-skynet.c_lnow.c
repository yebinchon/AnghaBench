
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int ) ;
 int skynet_now () ;

__attribute__((used)) static int
lnow(lua_State *L) {
 uint64_t ti = skynet_now();
 lua_pushinteger(L, ti);
 return 1;
}
