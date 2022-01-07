
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int luaL_error (int *,char*,int ) ;
 int send (int,char const*,int,int ) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void
block_send(lua_State *L, int fd, const char * buffer, int sz) {
 while(sz > 0) {
  int r = send(fd, buffer, sz, 0);
  if (r < 0) {
   if (errno == EAGAIN || errno == EINTR)
    continue;
   luaL_error(L, "socket error: %s", strerror(errno));
  }
  buffer += r;
  sz -= r;
 }
}
