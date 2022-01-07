
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;


 int assert (int) ;
 int stream_bad ;

__attribute__((used)) static void stream_close_callback(struct vlc_http_stream *stream, bool bad)
{
    (void) stream;
    assert(bad == stream_bad);
}
