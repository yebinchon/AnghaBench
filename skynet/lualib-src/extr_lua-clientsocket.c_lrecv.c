
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CACHE_SIZE ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,int) ;
 int recv (int,char*,int,int ) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
lrecv(lua_State *L) {
 int fd = luaL_checkinteger(L,1);

 char buffer[CACHE_SIZE];
 int r = recv(fd, buffer, CACHE_SIZE, 0);
 if (r == 0) {
  lua_pushliteral(L, "");

  return 1;
 }
 if (r < 0) {
  if (errno == EAGAIN || errno == EINTR) {
   return 0;
  }
  luaL_error(L, "socket error: %s", strerror(errno));
 }
 lua_pushlstring(L, buffer, r);
 return 1;
}
