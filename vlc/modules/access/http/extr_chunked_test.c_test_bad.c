
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_stream {int dummy; } ;
typedef int block_t ;


 int assert (int ) ;
 int block_Release (int *) ;
 int chunked_stream ;
 int chunked_tls ;
 int stream_bad ;
 char const* stream_content ;
 int stream_length ;
 int strlen (char const*) ;
 struct vlc_http_stream* vlc_chunked_open (int *,int *) ;
 int * vlc_http_error ;
 int vlc_http_stream_close (struct vlc_http_stream*,int) ;
 int * vlc_http_stream_read (struct vlc_http_stream*) ;

__attribute__((used)) static void test_bad(const char *payload)
{
    struct vlc_http_stream *s;
    block_t *b;

    stream_content = payload;
    stream_length = strlen(payload);
    stream_bad = 1;

    s = vlc_chunked_open(&chunked_stream, &chunked_tls);
    assert(s != ((void*)0));

    while ((b = vlc_http_stream_read(s)) != vlc_http_error)
    {
        assert(b != ((void*)0));
        block_Release(b);
    }

    vlc_http_stream_close(s, 0);
}
