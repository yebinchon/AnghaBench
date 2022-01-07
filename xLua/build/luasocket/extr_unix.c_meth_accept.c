
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_unix ;
typedef int t_socket ;
typedef TYPE_1__* p_unix ;
typedef int p_timeout ;
typedef int p_send ;
typedef int p_recv ;
typedef int p_error ;
typedef int lua_State ;
struct TYPE_2__ {int tm; int io; int buf; int sock; } ;


 int IO_DONE ;
 int auxiliar_checkclass (int *,char*,int) ;
 int auxiliar_setclass (int *,char*,int) ;
 int buffer_init (int *,int *,int *) ;
 int io_init (int *,int ,int ,int ,int *) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int socket_accept (int *,int *,int *,int *,int ) ;
 scalar_t__ socket_ioerror ;
 scalar_t__ socket_recv ;
 scalar_t__ socket_send ;
 int socket_setnonblocking (int *) ;
 int socket_strerror (int) ;
 int timeout_init (int *,int,int) ;
 int timeout_markstart (int *) ;

__attribute__((used)) static int meth_accept(lua_State *L) {
    p_unix server = (p_unix) auxiliar_checkclass(L, "unix{server}", 1);
    p_timeout tm = timeout_markstart(&server->tm);
    t_socket sock;
    int err = socket_accept(&server->sock, &sock, ((void*)0), ((void*)0), tm);

    if (err == IO_DONE) {
        p_unix clnt = (p_unix) lua_newuserdata(L, sizeof(t_unix));
        auxiliar_setclass(L, "unix{client}", -1);

        socket_setnonblocking(&sock);
        clnt->sock = sock;
        io_init(&clnt->io, (p_send)socket_send, (p_recv)socket_recv,
                (p_error) socket_ioerror, &clnt->sock);
        timeout_init(&clnt->tm, -1, -1);
        buffer_init(&clnt->buf, &clnt->io, &clnt->tm);
        return 1;
    } else {
        lua_pushnil(L);
        lua_pushstring(L, socket_strerror(err));
        return 2;
    }
}
