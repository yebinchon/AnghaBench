
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
typedef int block_t ;


 int assert (int ) ;
 int chunked_stream ;
 int chunked_tls ;
 int stream_bad ;
 char* stream_content ;
 int stream_length ;
 struct vlc_http_stream* vlc_chunked_open (int *,int *) ;
 int vlc_http_stream_close (struct vlc_http_stream*,int) ;
 int * vlc_http_stream_read (struct vlc_http_stream*) ;

__attribute__((used)) static void test_empty(void)
{
    struct vlc_http_stream *s;
    block_t *b;

    stream_content = "0\r\n";
    stream_length = 3;
    stream_bad = 1;

    s = vlc_chunked_open(&chunked_stream, &chunked_tls);
    assert(s != ((void*)0));

    b = vlc_http_stream_read(s);
    assert(b == ((void*)0));
    b = vlc_http_stream_read(s);
    assert(b == ((void*)0));
    vlc_http_stream_close(s, 0);
}
