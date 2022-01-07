
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* psz_host; int i_port; } ;
typedef TYPE_1__ vlc_url_t ;
struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {struct vlc_http_conn* conn; int logger; int * creds; } ;
struct vlc_http_conn {int dummy; } ;


 int free (char*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 int vlc_UrlParse (TYPE_1__*,char*) ;
 struct vlc_http_stream* vlc_h1_request (int ,char const*,unsigned int,int,struct vlc_http_msg const*,int,struct vlc_http_conn**) ;
 int vlc_http_conn_release (struct vlc_http_conn*) ;
 struct vlc_http_msg* vlc_http_mgr_reuse (struct vlc_http_mgr*,char const*,unsigned int,struct vlc_http_msg const*) ;
 struct vlc_http_msg* vlc_http_msg_get_initial (struct vlc_http_stream*) ;
 char* vlc_http_proxy_find (char const*,unsigned int,int) ;

__attribute__((used)) static struct vlc_http_msg *vlc_http_request(struct vlc_http_mgr *mgr,
                                             const char *host, unsigned port,
                                             const struct vlc_http_msg *req)
{
    if (mgr->creds != ((void*)0) && mgr->conn != ((void*)0))
        return ((void*)0);

    struct vlc_http_msg *resp = vlc_http_mgr_reuse(mgr, host, port, req);
    if (resp != ((void*)0))
        return resp;

    struct vlc_http_conn *conn;
    struct vlc_http_stream *stream;

    char *proxy = vlc_http_proxy_find(host, port, 0);
    if (proxy != ((void*)0))
    {
        vlc_url_t url;

        vlc_UrlParse(&url, proxy);
        free(proxy);

        if (url.psz_host != ((void*)0))
            stream = vlc_h1_request(mgr->logger, url.psz_host,
                                    url.i_port ? url.i_port : 80, 1, req,
                                    1, &conn);
        else
            stream = ((void*)0);

        vlc_UrlClean(&url);
    }
    else
        stream = vlc_h1_request(mgr->logger, host, port ? port : 80, 0,
                                req, 1, &conn);

    if (stream == ((void*)0))
        return ((void*)0);

    resp = vlc_http_msg_get_initial(stream);
    if (resp == ((void*)0))
    {
        vlc_http_conn_release(conn);
        return ((void*)0);
    }

    mgr->conn = conn;
    return resp;
}
