
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_udp ;
typedef int * p_timeout ;
typedef int lua_State ;
typedef int lua_Number ;
struct TYPE_2__ {int sock; int tm; } ;


 int IO_DONE ;
 int auxiliar_checkclass (int *,char*,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int socket_send (int *,char const*,size_t,size_t*,int *) ;
 int timeout_markstart (int *) ;
 int udp_strerror (int) ;

__attribute__((used)) static int meth_send(lua_State *L) {
    p_udp udp = (p_udp) auxiliar_checkclass(L, "udp{connected}", 1);
    p_timeout tm = &udp->tm;
    size_t count, sent = 0;
    int err;
    const char *data = luaL_checklstring(L, 2, &count);
    timeout_markstart(tm);
    err = socket_send(&udp->sock, data, count, &sent, tm);
    if (err != IO_DONE) {
        lua_pushnil(L);
        lua_pushstring(L, udp_strerror(err));
        return 2;
    }
    lua_pushnumber(L, (lua_Number) sent);
    return 1;
}
