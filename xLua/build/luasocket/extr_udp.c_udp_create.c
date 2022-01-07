
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yes ;
typedef int t_udp ;
typedef int t_socket ;
typedef TYPE_1__* p_udp ;
typedef int lua_State ;
struct TYPE_2__ {int family; int tm; int sock; } ;


 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int auxiliar_setclass (int *,char*,int) ;
 char* inet_trycreate (int *,int,int ) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int setsockopt (int ,int ,int ,void*,int) ;
 int socket_setnonblocking (int *) ;
 int timeout_init (int *,int,int) ;

__attribute__((used)) static int udp_create(lua_State *L, int family) {
    t_socket sock;
    const char *err = inet_trycreate(&sock, family, SOCK_DGRAM);

    if (!err) {

        p_udp udp = (p_udp) lua_newuserdata(L, sizeof(t_udp));
        auxiliar_setclass(L, "udp{unconnected}", -1);

        socket_setnonblocking(&sock);
        if (family == PF_INET6) {
            int yes = 1;
            setsockopt(sock, IPPROTO_IPV6, IPV6_V6ONLY,
                (void *)&yes, sizeof(yes));
        }
        udp->sock = sock;
        timeout_init(&udp->tm, -1, -1);
        udp->family = family;
        return 1;
    } else {
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }
}
