
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int assert (int) ;

__attribute__((used)) static void
fill_header(lua_State *L, uint8_t *buf, int sz) {
 assert(sz < 0x10000);
 buf[0] = (sz >> 8) & 0xff;
 buf[1] = sz & 0xff;
}
