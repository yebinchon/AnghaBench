
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int lua_State ;


 int lua_pushlstring (int *,char const*,int) ;

__attribute__((used)) static void
push64(lua_State *L, uint64_t r) {
 uint8_t tmp[8];
 tmp[0] = r & 0xff;
 tmp[1] = (r >> 8 )& 0xff;
 tmp[2] = (r >> 16 )& 0xff;
 tmp[3] = (r >> 24 )& 0xff;
 tmp[4] = (r >> 32 )& 0xff;
 tmp[5] = (r >> 40 )& 0xff;
 tmp[6] = (r >> 48 )& 0xff;
 tmp[7] = (r >> 56 )& 0xff;

 lua_pushlstring(L, (const char *)tmp, 8);
}
