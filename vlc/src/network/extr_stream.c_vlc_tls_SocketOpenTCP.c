
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
typedef int vlc_object_t ;
struct addrinfo {struct addrinfo* ai_next; int ai_protocol; int ai_socktype; } ;


 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int assert (int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int msg_Dbg (int *,char*,char const*,...) ;
 int msg_Err (int *,char*,char const*,...) ;
 int vlc_getaddrinfo_i11e (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ;
 int vlc_strerror_c (int ) ;
 int * vlc_tls_SocketOpenAddrInfo (struct addrinfo const*,int) ;

vlc_tls_t *vlc_tls_SocketOpenTCP(vlc_object_t *obj, const char *name,
                                 unsigned port)
{
    struct addrinfo hints =
    {
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
    }, *res;

    assert(name != ((void*)0));
    msg_Dbg(obj, "resolving %s ...", name);

    int val = vlc_getaddrinfo_i11e(name, port, &hints, &res);
    if (val != 0)
    {
        msg_Err(obj, "cannot resolve %s port %u: %s", name, port,
                gai_strerror(val));
        return ((void*)0);
    }

    msg_Dbg(obj, "connecting to %s port %u ...", name, port);


    for (const struct addrinfo *p = res; p != ((void*)0); p = p->ai_next)
    {
        vlc_tls_t *tls = vlc_tls_SocketOpenAddrInfo(p, 0);
        if (tls == ((void*)0))
        {
            msg_Err(obj, "connection error: %s", vlc_strerror_c(errno));
            continue;
        }

        freeaddrinfo(res);
        return tls;
    }

    freeaddrinfo(res);
    return ((void*)0);
}
