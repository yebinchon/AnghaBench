
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_conn {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; int ai_protocol; int ai_socktype; } ;


 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_getaddrinfo_i11e (char const*,unsigned int,struct addrinfo*,struct addrinfo**) ;
 struct vlc_http_conn* vlc_h1_conn_create (void*,int *,int) ;
 int vlc_http_conn_release (struct vlc_http_conn*) ;
 int vlc_http_dbg (void*,char*,char const*) ;
 int vlc_http_err (void*,char*,char const*,...) ;
 struct vlc_http_stream* vlc_http_stream_open (struct vlc_http_conn*,struct vlc_http_msg const*) ;
 int vlc_strerror_c (int ) ;
 int vlc_tls_SessionDelete (int *) ;
 int * vlc_tls_SocketOpenAddrInfo (struct addrinfo const*,int) ;

struct vlc_http_stream *vlc_h1_request(void *ctx, const char *hostname,
                                       unsigned port, bool proxy,
                                       const struct vlc_http_msg *req,
                                       bool idempotent,
                                       struct vlc_http_conn **restrict connp)
{
    struct addrinfo hints =
    {
        .ai_socktype = SOCK_STREAM,
        .ai_protocol = IPPROTO_TCP,
    }, *res;

    vlc_http_dbg(ctx, "resolving %s ...", hostname);

    int val = vlc_getaddrinfo_i11e(hostname, port, &hints, &res);
    if (val != 0)
    {
        vlc_http_err(ctx, "cannot resolve %s: %s", hostname,
                     gai_strerror(val));
        return ((void*)0);
    }

    for (const struct addrinfo *p = res; p != ((void*)0); p = p->ai_next)
    {
        vlc_tls_t *tcp = vlc_tls_SocketOpenAddrInfo(p, idempotent);
        if (tcp == ((void*)0))
        {
            vlc_http_err(ctx, "socket error: %s", vlc_strerror_c(errno));
            continue;
        }

        struct vlc_http_conn *conn = vlc_h1_conn_create(ctx, tcp, proxy);
        if (unlikely(conn == ((void*)0)))
        {
            vlc_tls_SessionDelete(tcp);
            continue;
        }


        struct vlc_http_stream *stream = vlc_http_stream_open(conn, req);

        if (stream != ((void*)0))
        {
            if (connp != ((void*)0))
                *connp = conn;
            else
                vlc_http_conn_release(conn);

            freeaddrinfo(res);
            return stream;
        }

        vlc_http_conn_release(conn);

        if (!idempotent)
            break;
    }


    freeaddrinfo(res);
    return ((void*)0);
}
