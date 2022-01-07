
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {struct vlc_http_conn* conn; int logger; int * creds; int obj; } ;
struct vlc_http_conn {int dummy; } ;


 int free (char*) ;
 scalar_t__ unlikely (int ) ;
 struct vlc_http_conn* vlc_h1_conn_create (int ,int *,int) ;
 struct vlc_http_conn* vlc_h2_conn_create (int ,int *) ;
 struct vlc_http_msg* vlc_http_mgr_reuse (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ;
 char* vlc_http_proxy_find (char const*,unsigned int,int) ;
 int * vlc_https_connect (int *,char const*,unsigned int,int*) ;
 int * vlc_https_connect_proxy (int *,int *,char const*,unsigned int,int*,char*) ;
 int * vlc_tls_ClientCreate (int ) ;
 int vlc_tls_Close (int *) ;

__attribute__((used)) static struct vlc_http_msg *vlc_https_request(struct vlc_http_mgr *mgr,
                                              const char *host, unsigned port,
                                              const struct vlc_http_msg *req)
{
    vlc_tls_t *tls;
    bool http2 = 1;

    if (mgr->creds == ((void*)0) && mgr->conn != ((void*)0))
        return ((void*)0);

    if (mgr->creds == ((void*)0))
    {
        mgr->creds = vlc_tls_ClientCreate(mgr->obj);
        if (mgr->creds == ((void*)0))
            return ((void*)0);
    }


    struct vlc_http_msg *resp = vlc_http_mgr_reuse(mgr, host, port, req);
    if (resp != ((void*)0))
        return resp;

    char *proxy = vlc_http_proxy_find(host, port, 1);
    if (proxy != ((void*)0))
    {
        tls = vlc_https_connect_proxy(mgr->creds, mgr->creds,
                                      host, port, &http2, proxy);
        free(proxy);
    }
    else
        tls = vlc_https_connect(mgr->creds, host, port, &http2);

    if (tls == ((void*)0))
        return ((void*)0);

    struct vlc_http_conn *conn;
    if (http2)
        conn = vlc_h2_conn_create(mgr->logger, tls);
    else
        conn = vlc_h1_conn_create(mgr->logger, tls, 0);

    if (unlikely(conn == ((void*)0)))
    {
        vlc_tls_Close(tls);
        return ((void*)0);
    }

    mgr->conn = conn;

    return vlc_http_mgr_reuse(mgr, host, port, req);
}
