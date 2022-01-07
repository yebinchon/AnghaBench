
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;

__attribute__((used)) static void
read64(lua_State *L, uint32_t xx[2], uint32_t yy[2]) {
 size_t sz = 0;
 const uint8_t *x = (const uint8_t *)luaL_checklstring(L, 1, &sz);
 if (sz != 8) {
  luaL_error(L, "Invalid uint64 x");
 }
 const uint8_t *y = (const uint8_t *)luaL_checklstring(L, 2, &sz);
 if (sz != 8) {
  luaL_error(L, "Invalid uint64 y");
 }
 xx[0] = x[0] | x[1]<<8 | x[2]<<16 | x[3]<<24;
 xx[1] = x[4] | x[5]<<8 | x[6]<<16 | x[7]<<24;
 yy[0] = y[0] | y[1]<<8 | y[2]<<16 | y[3]<<24;
 yy[1] = y[4] | y[5]<<8 | y[6]<<16 | y[7]<<24;
}
