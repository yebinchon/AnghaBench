
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int peer ;
typedef int * p_socket ;
typedef int lua_State ;
typedef int SA ;


 int INET6_ADDRSTRLEN ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int PF_INET ;
 int PF_INET6 ;
 int errno ;
 char* gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int,char*,int,char*,int,int) ;
 scalar_t__ getsockname (int ,int *,int*) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 char* socket_strerror (int ) ;

int inet_meth_getsockname(lua_State *L, p_socket ps, int family)
{
    int err;
    struct sockaddr_storage peer;
    socklen_t peer_len = sizeof(peer);
    char name[INET6_ADDRSTRLEN];
    char port[6];
    if (getsockname(*ps, (SA *) &peer, &peer_len) < 0) {
        lua_pushnil(L);
        lua_pushstring(L, socket_strerror(errno));
        return 2;
    }
 err=getnameinfo((struct sockaddr *)&peer, peer_len,
  name, INET6_ADDRSTRLEN, port, 6, NI_NUMERICHOST | NI_NUMERICSERV);
    if (err) {
        lua_pushnil(L);
        lua_pushstring(L, gai_strerror(err));
        return 2;
    }
    lua_pushstring(L, name);
    lua_pushstring(L, port);
    if (family == PF_INET) {
        lua_pushliteral(L, "inet");
    } else if (family == PF_INET6) {
        lua_pushliteral(L, "inet6");
    } else {
        lua_pushliteral(L, "uknown family");
    }
    return 3;
}
