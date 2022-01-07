
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int t_tcp ;
typedef int t_socket ;
typedef int p_timeout ;
typedef TYPE_1__* p_tcp ;
typedef int p_send ;
typedef int p_recv ;
typedef int p_error ;
typedef int lua_State ;
struct TYPE_3__ {int family; int tm; int io; int buf; int sock; } ;


 int auxiliar_checkclass (int *,char*,int) ;
 int auxiliar_setclass (int *,char*,int) ;
 int buffer_init (int *,int *,int *) ;
 char* inet_tryaccept (int *,int ,int *,int ) ;
 int io_init (int *,int ,int ,int ,int *) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ socket_ioerror ;
 scalar_t__ socket_recv ;
 scalar_t__ socket_send ;
 int socket_setnonblocking (int *) ;
 int timeout_init (int *,int,int) ;
 int timeout_markstart (int *) ;

__attribute__((used)) static int meth_accept(lua_State *L)
{
    p_tcp server = (p_tcp) auxiliar_checkclass(L, "tcp{server}", 1);
    p_timeout tm = timeout_markstart(&server->tm);
    t_socket sock;
    const char *err = inet_tryaccept(&server->sock, server->family, &sock, tm);

    if (err == ((void*)0)) {
        p_tcp clnt = (p_tcp) lua_newuserdata(L, sizeof(t_tcp));
        auxiliar_setclass(L, "tcp{client}", -1);

        memset(clnt, 0, sizeof(t_tcp));
        socket_setnonblocking(&sock);
        clnt->sock = sock;
        io_init(&clnt->io, (p_send) socket_send, (p_recv) socket_recv,
                (p_error) socket_ioerror, &clnt->sock);
        timeout_init(&clnt->tm, -1, -1);
        buffer_init(&clnt->buf, &clnt->io, &clnt->tm);
        clnt->family = server->family;
        return 1;
    } else {
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }
}
