
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;
struct vlc_http_conn {int dummy; } ;


 struct vlc_http_conn* vlc_http_mgr_find (struct vlc_http_mgr*,char const*,unsigned int) ;
 int vlc_http_mgr_release (struct vlc_http_mgr*,struct vlc_http_conn*) ;
 struct vlc_http_msg* vlc_http_msg_get_initial (struct vlc_http_stream*) ;
 struct vlc_http_stream* vlc_http_stream_open (struct vlc_http_conn*,struct vlc_http_msg const*) ;

__attribute__((used)) static
struct vlc_http_msg *vlc_http_mgr_reuse(struct vlc_http_mgr *mgr,
                                        const char *host, unsigned port,
                                        const struct vlc_http_msg *req)
{
    struct vlc_http_conn *conn = vlc_http_mgr_find(mgr, host, port);
    if (conn == ((void*)0))
        return ((void*)0);

    struct vlc_http_stream *stream = vlc_http_stream_open(conn, req);
    if (stream != ((void*)0))
    {
        struct vlc_http_msg *m = vlc_http_msg_get_initial(stream);
        if (m != ((void*)0))
            return m;





    }

    vlc_http_mgr_release(mgr, conn);
    return ((void*)0);
}
