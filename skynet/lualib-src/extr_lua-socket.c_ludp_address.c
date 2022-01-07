
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int tmp ;
typedef int lua_State ;


 int AF_INET ;
 int AF_INET6 ;
 int * inet_ntop (int,void const*,char*,int) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int memcpy (int *,int const*,int) ;
 int ntohs (int ) ;

__attribute__((used)) static int
ludp_address(lua_State *L) {
 size_t sz = 0;
 const uint8_t * addr = (const uint8_t *)luaL_checklstring(L, 1, &sz);
 uint16_t port = 0;
 memcpy(&port, addr+1, sizeof(uint16_t));
 port = ntohs(port);
 const void * src = addr+3;
 char tmp[256];
 int family;
 if (sz == 1+2+4) {
  family = AF_INET;
 } else {
  if (sz != 1+2+16) {
   return luaL_error(L, "Invalid udp address");
  }
  family = AF_INET6;
 }
 if (inet_ntop(family, src, tmp, sizeof(tmp)) == ((void*)0)) {
  return luaL_error(L, "Invalid udp address");
 }
 lua_pushstring(L, tmp);
 lua_pushinteger(L, port);
 return 2;
}
