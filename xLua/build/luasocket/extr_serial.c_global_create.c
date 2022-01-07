
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_unix ;
typedef scalar_t__ t_socket ;
typedef TYPE_1__* p_unix ;
typedef int p_send ;
typedef int p_recv ;
typedef int p_error ;
typedef int lua_State ;
struct TYPE_2__ {int tm; int io; int buf; scalar_t__ sock; } ;


 int O_NOCTTY ;
 int O_RDWR ;
 int auxiliar_setclass (int *,char*,int) ;
 int buffer_init (int *,int *,int *) ;
 int errno ;
 int io_init (int *,int ,int ,int ,scalar_t__*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 scalar_t__ open (char const*,int) ;
 scalar_t__ socket_ioerror ;
 scalar_t__ socket_read ;
 int socket_setnonblocking (scalar_t__*) ;
 int socket_strerror (int ) ;
 scalar_t__ socket_write ;
 int timeout_init (int *,int,int) ;

__attribute__((used)) static int global_create(lua_State *L) {
    const char* path = luaL_checkstring(L, 1);


    p_unix un = (p_unix) lua_newuserdata(L, sizeof(t_unix));


    t_socket sock = open(path, O_NOCTTY|O_RDWR);



    if (sock < 0) {
        lua_pushnil(L);
        lua_pushstring(L, socket_strerror(errno));
        lua_pushnumber(L, errno);
        return 3;
    }

    auxiliar_setclass(L, "serial{client}", -1);

    socket_setnonblocking(&sock);
    un->sock = sock;
    io_init(&un->io, (p_send) socket_write, (p_recv) socket_read,
            (p_error) socket_ioerror, &un->sock);
    timeout_init(&un->tm, -1, -1);
    buffer_init(&un->buf, &un->io, &un->tm);
    return 1;
}
