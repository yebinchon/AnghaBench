
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_tcp ;
struct addrinfo {int family; int ai_family; int sock; int tm; void* ai_socktype; int ai_flags; int io; int buf; } ;
typedef struct addrinfo* p_tcp ;
typedef int p_send ;
typedef int p_recv ;
typedef int p_error ;
typedef int lua_State ;
typedef int connecthints ;
typedef int bindhints ;


 int AI_PASSIVE ;
 int PF_UNSPEC ;
 int SOCKET_INVALID ;
 void* SOCK_STREAM ;
 int auxiliar_setclass (int *,char*,int) ;
 int buffer_init (int *,int *,int *) ;
 int inet_optfamily (int *,int,char*) ;
 char* inet_trybind (int *,char const*,char const*,struct addrinfo*) ;
 char* inet_tryconnect (int *,int*,char const*,char const*,int *,struct addrinfo*) ;
 int io_init (int *,int ,int ,int ,int *) ;
 char* luaL_checkstring (int *,int) ;
 char* luaL_optstring (int *,int,char*) ;
 int lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket_destroy (int *) ;
 scalar_t__ socket_ioerror ;
 scalar_t__ socket_recv ;
 scalar_t__ socket_send ;
 int timeout_init (int *,int,int) ;

__attribute__((used)) static int global_connect(lua_State *L) {
    const char *remoteaddr = luaL_checkstring(L, 1);
    const char *remoteserv = luaL_checkstring(L, 2);
    const char *localaddr = luaL_optstring(L, 3, ((void*)0));
    const char *localserv = luaL_optstring(L, 4, "0");
    int family = inet_optfamily(L, 5, "unspec");
    p_tcp tcp = (p_tcp) lua_newuserdata(L, sizeof(t_tcp));
    struct addrinfo bindhints, connecthints;
    const char *err = ((void*)0);

    memset(tcp, 0, sizeof(t_tcp));
    io_init(&tcp->io, (p_send) socket_send, (p_recv) socket_recv,
            (p_error) socket_ioerror, &tcp->sock);
    timeout_init(&tcp->tm, -1, -1);
    buffer_init(&tcp->buf, &tcp->io, &tcp->tm);
    tcp->sock = SOCKET_INVALID;
    tcp->family = PF_UNSPEC;

    memset(&bindhints, 0, sizeof(bindhints));
    bindhints.ai_socktype = SOCK_STREAM;
    bindhints.ai_family = family;
    bindhints.ai_flags = AI_PASSIVE;
    if (localaddr) {
        err = inet_trybind(&tcp->sock, localaddr, localserv, &bindhints);
        if (err) {
            lua_pushnil(L);
            lua_pushstring(L, err);
            return 2;
        }
        tcp->family = bindhints.ai_family;
    }

    memset(&connecthints, 0, sizeof(connecthints));
    connecthints.ai_socktype = SOCK_STREAM;

    connecthints.ai_family = bindhints.ai_family;
    err = inet_tryconnect(&tcp->sock, &tcp->family, remoteaddr, remoteserv,
         &tcp->tm, &connecthints);
    if (err) {
        socket_destroy(&tcp->sock);
        lua_pushnil(L);
        lua_pushstring(L, err);
        return 2;
    }
    auxiliar_setclass(L, "tcp{client}", -1);
    return 1;
}
