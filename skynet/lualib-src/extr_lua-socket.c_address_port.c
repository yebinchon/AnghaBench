
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,char const*) ;
 int luaL_optinteger (int *,int,int ) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strtoul (char const*,int *,int) ;

__attribute__((used)) static const char *
address_port(lua_State *L, char *tmp, const char * addr, int port_index, int *port) {
 const char * host;
 if (lua_isnoneornil(L,port_index)) {
  host = strchr(addr, '[');
  if (host) {

   ++host;
   const char * sep = strchr(addr,']');
   if (sep == ((void*)0)) {
    luaL_error(L, "Invalid address %s.",addr);
   }
   memcpy(tmp, host, sep-host);
   tmp[sep-host] = '\0';
   host = tmp;
   sep = strchr(sep + 1, ':');
   if (sep == ((void*)0)) {
    luaL_error(L, "Invalid address %s.",addr);
   }
   *port = strtoul(sep+1,((void*)0),10);
  } else {

   const char * sep = strchr(addr,':');
   if (sep == ((void*)0)) {
    luaL_error(L, "Invalid address %s.",addr);
   }
   memcpy(tmp, addr, sep-addr);
   tmp[sep-addr] = '\0';
   host = tmp;
   *port = strtoul(sep+1,((void*)0),10);
  }
 } else {
  host = addr;
  *port = luaL_optinteger(L,port_index, 0);
 }
 return host;
}
