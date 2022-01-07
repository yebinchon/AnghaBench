
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vlc_http_stream {int dummy; } ;
struct TYPE_4__ {int i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 int assert (int) ;
 int block_Release (TYPE_1__*) ;
 int chunked_stream ;
 int chunked_tls ;
 int memcmp (int ,char*,int) ;
 int stream_bad ;
 char* stream_content ;
 int stream_length ;
 int strlen (char*) ;
 struct vlc_http_stream* vlc_chunked_open (int *,int *) ;
 int vlc_http_stream_close (struct vlc_http_stream*,int) ;
 TYPE_1__* vlc_http_stream_read (struct vlc_http_stream*) ;
 int * vlc_http_stream_read_headers (struct vlc_http_stream*) ;

__attribute__((used)) static void test_good(void)
{
    struct vlc_http_stream *s;
    block_t *b;


    stream_content =
        "A\r\n" "1234567890\r\n"
        "1A; ext-foo=1\r\n" "abcdefghijklmnopqrstuvwxyz\r\n"
        "0\r\n" "\r\n";
    stream_length = strlen(stream_content);
    stream_bad = 0;

    s = vlc_chunked_open(&chunked_stream, &chunked_tls);
    assert(s != ((void*)0));
    assert(vlc_http_stream_read_headers(s) == ((void*)0));

    b = vlc_http_stream_read(s);
    assert(b != ((void*)0));
    assert(b->i_buffer == 10);
    assert(!memcmp(b->p_buffer, "1234567890", 10));
    block_Release(b);

    b = vlc_http_stream_read(s);
    assert(b != ((void*)0));
    assert(b->i_buffer == 26);
    assert(!memcmp(b->p_buffer, "abcdefghijklmnopqrstuvwxyz", 26));
    block_Release(b);

    b = vlc_http_stream_read(s);
    assert(b == ((void*)0));
    b = vlc_http_stream_read(s);
    assert(b == ((void*)0));

    vlc_http_stream_close(s, 0);
}
