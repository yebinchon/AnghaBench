
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int psz_password; int psz_username; int i_port; int * psz_host; int * psz_protocol; } ;
typedef TYPE_1__ vlc_url_t ;
struct TYPE_15__ {int * p; int * ops; } ;
typedef TYPE_2__ vlc_tls_t ;
struct TYPE_16__ {TYPE_2__ tls; TYPE_2__* sock; } ;
typedef TYPE_3__ vlc_tls_proxy_t ;
typedef int vlc_tls_client_t ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_conn {int dummy; } ;


 int assert (int) ;
 int free (char*) ;
 TYPE_3__* malloc (int) ;
 int strcasecmp (int *,char*) ;
 int strcmp (char*,char*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_UrlClean (TYPE_1__*) ;
 int vlc_UrlParse (TYPE_1__*,char const*) ;
 struct vlc_http_conn* vlc_h1_conn_create (void*,TYPE_2__*,int) ;
 int vlc_http_conn_release (struct vlc_http_conn*) ;
 struct vlc_http_msg* vlc_http_tunnel_open (struct vlc_http_conn*,char const*,unsigned int,int ,int ) ;
 TYPE_2__* vlc_https_connect (int *,int *,int ,int*) ;
 int * vlc_object_parent (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 TYPE_2__* vlc_tls_ClientSessionCreate (int *,TYPE_2__*,char const*,char*,char const**,char**) ;
 int vlc_tls_Close (TYPE_2__*) ;
 TYPE_2__* vlc_tls_SocketOpenTCP (int *,int *,int ) ;
 int vlc_tls_proxy_ops ;

vlc_tls_t *vlc_https_connect_proxy(void *ctx, vlc_tls_client_t *creds,
                                   const char *hostname, unsigned port,
                                   bool *restrict two, const char *proxy)
{
    vlc_url_t url;
    int canc;

    assert(proxy != ((void*)0));

    if (port == 0)
        port = 443;

    canc = vlc_savecancel();
    vlc_UrlParse(&url, proxy);
    vlc_restorecancel(canc);

    if (url.psz_protocol == ((void*)0) || url.psz_host == ((void*)0))
    {
        vlc_UrlClean(&url);
        return ((void*)0);
    }

    vlc_tls_t *sock = ((void*)0);
    bool ptwo = 0;
    if (!strcasecmp(url.psz_protocol, "https"))
        sock = vlc_https_connect(creds, url.psz_host, url.i_port, &ptwo);
    else
    if (!strcasecmp(url.psz_protocol, "http"))
        sock = vlc_tls_SocketOpenTCP(creds ? vlc_object_parent(creds) : ((void*)0),
                                     url.psz_host, url.i_port);
    else
        sock = ((void*)0);

    if (sock == ((void*)0))
    {
        vlc_UrlClean(&url);
        return ((void*)0);
    }

    assert(!ptwo);

    vlc_tls_proxy_t *psock = malloc(sizeof (*psock));
    if (unlikely(psock == ((void*)0)))
    {
        vlc_UrlClean(&url);
        goto error;
    }

    psock->tls.ops = &vlc_tls_proxy_ops;
    psock->tls.p = ((void*)0);
    psock->sock = sock;

    struct vlc_http_conn *conn = vlc_h1_conn_create(ctx, &psock->tls, 0);

    if (unlikely(conn == ((void*)0)))
    {
        vlc_tls_Close(&psock->tls);
        vlc_UrlClean(&url);
        goto error;
    }

    struct vlc_http_msg *resp = vlc_http_tunnel_open(conn, hostname, port,
                                                     url.psz_username,
                                                     url.psz_password);
    vlc_UrlClean(&url);


    vlc_http_conn_release(conn);

    if (resp == ((void*)0))
        goto error;

    vlc_tls_t *tls;
    const char *alpn[] = { "h2", "http/1.1", ((void*)0) };
    char *alp;

    tls = vlc_tls_ClientSessionCreate(creds, sock, hostname, "https",
                                      alpn + !*two, &alp);
    if (tls == ((void*)0))
        goto error;

    *two = (alp != ((void*)0)) && !strcmp(alp, "h2");
    free(alp);
    return tls;
error:
    vlc_tls_Close(sock);
    return ((void*)0);
}
