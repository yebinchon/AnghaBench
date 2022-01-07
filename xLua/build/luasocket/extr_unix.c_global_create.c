
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_unix ;
typedef int t_socket ;
typedef TYPE_1__* p_unix ;
typedef int p_send ;
typedef int p_recv ;
typedef int p_error ;
typedef int lua_State ;
struct TYPE_2__ {int tm; int io; int buf; int sock; } ;


 int AF_UNIX ;
 int IO_DONE ;
 int SOCK_STREAM ;
 int auxiliar_setclass (int *,char*,int) ;
 int buffer_init (int *,int *,int *) ;
 int io_init (int *,int ,int ,int ,int *) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int socket_create (int *,int ,int ,int ) ;
 scalar_t__ socket_ioerror ;
 scalar_t__ socket_recv ;
 scalar_t__ socket_send ;
 int socket_setnonblocking (int *) ;
 int socket_strerror (int) ;
 int timeout_init (int *,int,int) ;

__attribute__((used)) static int global_create(lua_State *L) {
    t_socket sock;
    int err = socket_create(&sock, AF_UNIX, SOCK_STREAM, 0);

    if (err == IO_DONE) {

        p_unix un = (p_unix) lua_newuserdata(L, sizeof(t_unix));

        auxiliar_setclass(L, "unix{master}", -1);

        socket_setnonblocking(&sock);
        un->sock = sock;
        io_init(&un->io, (p_send) socket_send, (p_recv) socket_recv,
                (p_error) socket_ioerror, &un->sock);
        timeout_init(&un->tm, -1, -1);
        buffer_init(&un->buf, &un->io, &un->tm);
        return 1;
    } else {
        lua_pushnil(L);
        lua_pushstring(L, socket_strerror(err));
        return 2;
    }
}
