
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;


 int assert (int) ;
 struct vlc_http_stream stream ;

__attribute__((used)) static void stream_close(struct vlc_http_stream *s, bool abort)
{
    assert(s == &stream);
    assert(!abort);
}
