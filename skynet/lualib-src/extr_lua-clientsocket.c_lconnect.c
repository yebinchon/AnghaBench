
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; int sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int lua_State ;


 int AF_INET ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int connect (int,struct sockaddr*,int) ;
 int fcntl (int,int ,int) ;
 int htons (int) ;
 int inet_addr (char const*) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*,char const*,int) ;
 int lua_pushinteger (int *,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
lconnect(lua_State *L) {
 const char * addr = luaL_checkstring(L, 1);
 int port = luaL_checkinteger(L, 2);
 int fd = socket(AF_INET,SOCK_STREAM,0);
 struct sockaddr_in my_addr;

 my_addr.sin_addr.s_addr=inet_addr(addr);
 my_addr.sin_family=AF_INET;
 my_addr.sin_port=htons(port);

 int r = connect(fd,(struct sockaddr *)&my_addr,sizeof(struct sockaddr_in));

 if (r == -1) {
  return luaL_error(L, "Connect %s %d failed", addr, port);
 }

 int flag = fcntl(fd, F_GETFL, 0);
 fcntl(fd, F_SETFL, flag | O_NONBLOCK);

 lua_pushinteger(L, fd);

 return 1;
}
