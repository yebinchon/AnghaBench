
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {size_t i_buffer; size_t p_buffer; } ;
typedef TYPE_1__ block_t ;


 int block_Release (TYPE_1__*) ;
 scalar_t__ likely (int) ;
 int memcpy (void*,size_t,size_t) ;

__attribute__((used)) static ssize_t vlc_stream_CopyBlock(block_t **restrict pp,
                                    void *buf, size_t len)
{
    block_t *block = *pp;

    if (block == ((void*)0))
        return -1;

    if (len > block->i_buffer)
        len = block->i_buffer;

    if (buf != ((void*)0))
        memcpy(buf, block->p_buffer, len);

    block->p_buffer += len;
    block->i_buffer -= len;

    if (block->i_buffer == 0)
    {
        block_Release(block);
        *pp = ((void*)0);
    }

    return likely(len > 0) ? (ssize_t)len : -1;
}
