
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
struct vlc_http_msg {int dummy; } ;


 int assert (int ) ;
 int conn ;
 int vlc_http_msg_destroy (struct vlc_http_msg*) ;
 struct vlc_http_msg* vlc_http_req_create (char*,char*,char*,char*) ;
 struct vlc_http_stream* vlc_http_stream_open (int ,struct vlc_http_msg*) ;

__attribute__((used)) static struct vlc_http_stream *stream_open(void)
{
    struct vlc_http_msg *m = vlc_http_req_create("GET", "https",
                                                 "www.example.com", "/");
    assert(m != ((void*)0));

    struct vlc_http_stream *s = vlc_http_stream_open(conn, m);
    vlc_http_msg_destroy(m);
    return s;
}
