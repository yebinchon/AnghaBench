
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t (* read ) (int ,void*,size_t) ;int data; } ;
typedef TYPE_1__ ar_stream ;


 size_t stub1 (int ,void*,size_t) ;

size_t ar_read(ar_stream *stream, void *buffer, size_t count)
{
    return stream->read(stream->data, buffer, count);
}
