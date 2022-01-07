
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef TYPE_1__* p_udp ;
typedef int * p_timeout ;
typedef int lua_State ;
typedef int buffer ;
typedef int addr ;
struct TYPE_2__ {int sock; int tm; } ;
typedef int SA ;


 int INET6_ADDRSTRLEN ;
 int IO_CLOSED ;
 int IO_DONE ;
 size_t MIN (size_t,int) ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int UDP_DATAGRAMSIZE ;
 int auxiliar_checkclass (int *,char*,int) ;
 char* gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int,char*,int,char*,int,int) ;
 int luaL_optnumber (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int socket_recvfrom (int *,char*,size_t,size_t*,int *,int*,int *) ;
 scalar_t__ strtol (char*,char**,int) ;
 int timeout_markstart (int *) ;
 char* udp_strerror (int) ;

__attribute__((used)) static int meth_receivefrom(lua_State *L)
{
    p_udp udp = (p_udp) auxiliar_checkclass(L, "udp{unconnected}", 1);
    char buffer[UDP_DATAGRAMSIZE];
    size_t got, count = (size_t) luaL_optnumber(L, 2, sizeof(buffer));
    int err;
    p_timeout tm = &udp->tm;
    struct sockaddr_storage addr;
    socklen_t addr_len = sizeof(addr);
    char addrstr[INET6_ADDRSTRLEN];
    char portstr[6];
    timeout_markstart(tm);
    count = MIN(count, sizeof(buffer));
    err = socket_recvfrom(&udp->sock, buffer, count, &got, (SA *) &addr,
            &addr_len, tm);

    if (err == IO_CLOSED)
        err = IO_DONE;
    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, udp_strerror(err));
        return 2;
    }
    err = getnameinfo((struct sockaddr *)&addr, addr_len, addrstr,
        INET6_ADDRSTRLEN, portstr, 6, NI_NUMERICHOST | NI_NUMERICSERV);
 if (err) {
        lua_pushnil(L);
        lua_pushstring(L, gai_strerror(err));
        return 2;
    }
    lua_pushlstring(L, buffer, got);
    lua_pushstring(L, addrstr);
    lua_pushinteger(L, (int) strtol(portstr, (char **) ((void*)0), 10));
    return 3;
}
