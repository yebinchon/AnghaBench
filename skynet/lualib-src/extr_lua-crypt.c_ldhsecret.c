
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int powmodp (int,int) ;
 int push64 (int *,int) ;
 int read64 (int *,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
ldhsecret(lua_State *L) {
 uint32_t x[2], y[2];
 read64(L, x, y);
 uint64_t xx = (uint64_t)x[0] | (uint64_t)x[1]<<32;
 uint64_t yy = (uint64_t)y[0] | (uint64_t)y[1]<<32;
 if (xx == 0 || yy == 0)
  return luaL_error(L, "Can't be 0");
 uint64_t r = powmodp(xx, yy);

 push64(L, r);

 return 1;
}
