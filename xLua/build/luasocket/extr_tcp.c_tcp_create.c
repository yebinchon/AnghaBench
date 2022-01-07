
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int yes ;
typedef int t_tcp ;
typedef int t_socket ;
typedef TYPE_1__* p_tcp ;
typedef int p_send ;
typedef int p_recv ;
typedef int p_error ;
typedef int lua_State ;
struct TYPE_3__ {int family; int tm; int io; int buf; int sock; } ;


 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int PF_INET6 ;
 int SOCK_STREAM ;
 int auxiliar_setclass (int *,char*,int) ;
 int buffer_init (int *,int *,int *) ;
 char* inet_trycreate (int *,int,int ) ;
 int io_init (int *,int ,int ,int ,int *) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int setsockopt (int ,int ,int ,void*,int) ;
 scalar_t__ socket_ioerror ;
 scalar_t__ socket_recv ;
 scalar_t__ socket_send ;
 int socket_setnonblocking (int *) ;
 int timeout_init (int *,int,int) ;

__attribute__((used)) static int tcp_create(lua_State *L, int family) {
    t_socket sock;
    const char *err = inet_trycreate(&sock, family, SOCK_STREAM);

    if (!err) {

        p_tcp tcp = (p_tcp) lua_newuserdata(L, sizeof(t_tcp));
        memset(tcp, 0, sizeof(t_tcp));

        auxiliar_setclass(L, "tcp{master}", -1);

        socket_setnonblocking(&sock);
        if (family == PF_INET6) {
            int yes = 1;
            setsockopt(sock, IPPROTO_IPV6, IPV6_V6ONLY,
                (void *)&yes, sizeof(yes));
        }
        tcp->sock = sock;
        io_init(&tcp->io, (p_send) socket_send, (p_recv) socket_recv,
                (p_error) socket_ioerror, &tcp->sock);
        timeout_init(&tcp->tm, -1, -1);
        buffer_init(&tcp->buf, &tcp->io, &tcp->tm);
        tcp->family = family;
        return 1;
    } else {
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }
}
