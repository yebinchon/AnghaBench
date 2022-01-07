
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_flags; scalar_t__ ai_addrlen; int ai_addr; int ai_socktype; int ai_family; } ;
typedef int socklen_t ;
typedef TYPE_1__* p_udp ;
typedef int * p_timeout ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int aihint ;
struct TYPE_2__ {int sock; int family; int tm; } ;


 int AI_NUMERICHOST ;
 int AI_NUMERICSERV ;
 int IO_DONE ;
 int SOCK_DGRAM ;
 int auxiliar_checkclass (int *,char*,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket_sendto (int *,char const*,size_t,size_t*,int ,int ,int *) ;
 int timeout_markstart (int *) ;
 int udp_strerror (int) ;

__attribute__((used)) static int meth_sendto(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkclass(L, "udp{unconnected}", 1);
    size_t count, sent = 0;
    const char *data = luaL_checklstring(L, 2, &count);
    const char *ip = luaL_checkstring(L, 3);
    const char *port = luaL_checkstring(L, 4);
    p_timeout tm = &udp->tm;
    int err;
    struct addrinfo aihint;
    struct addrinfo *ai;
    memset(&aihint, 0, sizeof(aihint));
    aihint.ai_family = udp->family;
    aihint.ai_socktype = SOCK_DGRAM;
    aihint.ai_flags = AI_NUMERICHOST | AI_NUMERICSERV;
    err = getaddrinfo(ip, port, &aihint, &ai);
 if (err) {
        lua_pushnil(L);
        lua_pushstring(L, gai_strerror(err));
        return 2;
    }
    timeout_markstart(tm);
    err = socket_sendto(&udp->sock, data, count, &sent, ai->ai_addr,
        (socklen_t) ai->ai_addrlen, tm);
    freeaddrinfo(ai);
    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, udp_strerror(err));
        return 2;
    }
    lua_pushnumber(L, (lua_Number) sent);
    return 1;
}
