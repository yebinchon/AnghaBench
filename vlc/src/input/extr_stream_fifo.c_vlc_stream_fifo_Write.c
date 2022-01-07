
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_stream_fifo_t ;
typedef int ssize_t ;
struct TYPE_4__ {int p_buffer; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* block_Alloc (size_t) ;
 int memcpy (int ,void const*,size_t) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_stream_fifo_Queue (int *,TYPE_1__*) ;

ssize_t vlc_stream_fifo_Write(vlc_stream_fifo_t *writer,
                              const void *buf, size_t len)
{
    block_t *block = block_Alloc(len);
    if (unlikely(block == ((void*)0)))
        return -1;

    memcpy(block->p_buffer, buf, len);
    return vlc_stream_fifo_Queue(writer, block) ? -1 : (ssize_t)len;
}
