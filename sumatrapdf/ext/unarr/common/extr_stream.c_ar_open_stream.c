
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ar_stream_tell_fn ;
typedef int ar_stream_seek_fn ;
typedef int ar_stream_read_fn ;
typedef int (* ar_stream_close_fn ) (void*) ;
struct TYPE_4__ {int tell; int seek; int read; int (* close ) (void*) ;void* data; } ;
typedef TYPE_1__ ar_stream ;


 TYPE_1__* malloc (int) ;

ar_stream *ar_open_stream(void *data, ar_stream_close_fn close, ar_stream_read_fn read, ar_stream_seek_fn seek, ar_stream_tell_fn tell)
{
    ar_stream *stream = malloc(sizeof(ar_stream));
    if (!stream) {
        close(data);
        return ((void*)0);
    }
    stream->data = data;
    stream->close = close;
    stream->read = read;
    stream->seek = seek;
    stream->tell = tell;
    return stream;
}
