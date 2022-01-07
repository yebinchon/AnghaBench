
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
typedef int vlc_tls_client_t ;
struct addrinfo {struct addrinfo* ai_next; int ai_protocol; int ai_socktype; } ;


 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int msg_Dbg (int *,char*,char const*) ;
 int msg_Err (int *,char*,char const*,...) ;
 int vlc_getaddrinfo_i11e (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ;
 int vlc_strerror_c (int ) ;
 int * vlc_tls_ClientSessionCreate (int *,int *,char const*,char const*,char const* const*,char**) ;
 int vlc_tls_SessionDelete (int *) ;
 int * vlc_tls_SocketOpenAddrInfo (struct addrinfo const*,int) ;

vlc_tls_t *vlc_tls_SocketOpenTLS(vlc_tls_client_t *creds, const char *name,
                                 unsigned port, const char *service,
                                 const char *const *alpn, char **alp)
{
    struct addrinfo hints =
    {
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
    }, *res;

    msg_Dbg(creds, "resolving %s ...", name);

    int val = vlc_getaddrinfo_i11e(name, port, &hints, &res);
    if (val != 0)
    {
        msg_Err(creds, "cannot resolve %s port %u: %s", name, port,
                gai_strerror(val));
        return ((void*)0);
    }

    for (const struct addrinfo *p = res; p != ((void*)0); p = p->ai_next)
    {
        vlc_tls_t *tcp = vlc_tls_SocketOpenAddrInfo(p, 1);
        if (tcp == ((void*)0))
        {
            msg_Err(creds, "socket error: %s", vlc_strerror_c(errno));
            continue;
        }

        vlc_tls_t *tls = vlc_tls_ClientSessionCreate(creds, tcp, name, service,
                                                     alpn, alp);
        if (tls != ((void*)0))
        {
            freeaddrinfo(res);
            return tls;
        }

        msg_Err(creds, "connection error: %s", vlc_strerror_c(errno));
        vlc_tls_SessionDelete(tcp);
    }


    freeaddrinfo(res);
    return ((void*)0);
}
