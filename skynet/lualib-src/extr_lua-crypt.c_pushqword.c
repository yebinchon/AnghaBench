
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int lua_pushlstring (int *,char const*,int) ;

__attribute__((used)) static int
pushqword(lua_State *L, uint32_t result[2]) {
 uint8_t tmp[8];
 tmp[0] = result[0] & 0xff;
 tmp[1] = (result[0] >> 8 )& 0xff;
 tmp[2] = (result[0] >> 16 )& 0xff;
 tmp[3] = (result[0] >> 24 )& 0xff;
 tmp[4] = result[1] & 0xff;
 tmp[5] = (result[1] >> 8 )& 0xff;
 tmp[6] = (result[1] >> 16 )& 0xff;
 tmp[7] = (result[1] >> 24 )& 0xff;

 lua_pushlstring(L, (const char *)tmp, 8);
 return 1;
}
