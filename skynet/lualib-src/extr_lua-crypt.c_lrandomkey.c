
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushlstring (int *,char*,int) ;
 int random () ;

__attribute__((used)) static int
lrandomkey(lua_State *L) {
 char tmp[8];
 int i;
 char x = 0;
 for (i=0;i<8;i++) {
  tmp[i] = random() & 0xff;
  x ^= tmp[i];
 }
 if (x==0) {
  tmp[0] |= 1;
 }
 lua_pushlstring(L, tmp, 8);
 return 1;
}
