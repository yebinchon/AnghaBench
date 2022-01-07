
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_udp ;
typedef int * p_timeout ;
typedef int lua_State ;
typedef int buffer ;
struct TYPE_2__ {int sock; int tm; } ;


 int IO_CLOSED ;
 int IO_DONE ;
 size_t MIN (size_t,int) ;
 int UDP_DATAGRAMSIZE ;
 int auxiliar_checkgroup (int *,char*,int) ;
 int luaL_optnumber (int *,int,int) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int socket_recv (int *,char*,size_t,size_t*,int *) ;
 int timeout_markstart (int *) ;
 int udp_strerror (int) ;

__attribute__((used)) static int meth_receive(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkgroup(L, "udp{any}", 1);
    char buffer[UDP_DATAGRAMSIZE];
    size_t got, count = (size_t) luaL_optnumber(L, 2, sizeof(buffer));
    int err;
    p_timeout tm = &udp->tm;
    count = MIN(count, sizeof(buffer));
    timeout_markstart(tm);
    err = socket_recv(&udp->sock, buffer, count, &got, tm);

    if (err == IO_CLOSED)
        err = IO_DONE;
    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, udp_strerror(err));
        return 2;
    }
    lua_pushlstring(L, buffer, got);
    return 1;
}
