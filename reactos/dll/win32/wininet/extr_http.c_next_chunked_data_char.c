
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int buf_pos; int buf_size; } ;
typedef TYPE_1__ chunked_stream_t ;


 int assert (int ) ;

__attribute__((used)) static char next_chunked_data_char(chunked_stream_t *stream)
{
    assert(stream->buf_size);

    stream->buf_size--;
    return stream->buf[stream->buf_pos++];
}
