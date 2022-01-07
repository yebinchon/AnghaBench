
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_chunked_stream {int error; } ;


 void* vlc_http_error ;

__attribute__((used)) static void *vlc_chunked_fatal(struct vlc_chunked_stream *s)
{
    s->error = 1;
    return vlc_http_error;
}
