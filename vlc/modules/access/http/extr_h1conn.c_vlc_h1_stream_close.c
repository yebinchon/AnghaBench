
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
struct vlc_h1_conn {int active; scalar_t__ released; } ;


 int assert (int) ;
 int vlc_h1_conn_destroy (struct vlc_h1_conn*) ;
 struct vlc_h1_conn* vlc_h1_stream_conn (struct vlc_http_stream*) ;
 int vlc_h1_stream_fatal (struct vlc_h1_conn*) ;

__attribute__((used)) static void vlc_h1_stream_close(struct vlc_http_stream *stream, bool abort)
{
    struct vlc_h1_conn *conn = vlc_h1_stream_conn(stream);

    assert(conn->active);

    if (abort)
        vlc_h1_stream_fatal(conn);

    conn->active = 0;

    if (conn->released)
        vlc_h1_conn_destroy(conn);
}
