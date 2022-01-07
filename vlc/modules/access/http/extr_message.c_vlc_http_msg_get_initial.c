
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;


 int vlc_http_stream_close (struct vlc_http_stream*,int) ;
 struct vlc_http_msg* vlc_http_stream_read_headers (struct vlc_http_stream*) ;

struct vlc_http_msg *vlc_http_msg_get_initial(struct vlc_http_stream *s)
{
    struct vlc_http_msg *m = vlc_http_stream_read_headers(s);
    if (m == ((void*)0))
        vlc_http_stream_close(s, 0);
    return m;
}
