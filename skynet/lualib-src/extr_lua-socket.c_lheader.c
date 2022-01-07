
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,size_t const*) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int
lheader(lua_State *L) {
 size_t len;
 const uint8_t * s = (const uint8_t *)luaL_checklstring(L, 1, &len);
 if (len > 4 || len < 1) {
  return luaL_error(L, "Invalid read %s", s);
 }
 int i;
 size_t sz = 0;
 for (i=0;i<(int)len;i++) {
  sz <<= 8;
  sz |= s[i];
 }

 lua_pushinteger(L, (lua_Integer)sz);

 return 1;
}
