
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
struct block_t {int dummy; } ;


 int assert (int) ;
 struct vlc_http_stream stream ;

__attribute__((used)) static struct block_t *stream_read(struct vlc_http_stream *s)
{
    assert(s == &stream);
    return ((void*)0);
}
