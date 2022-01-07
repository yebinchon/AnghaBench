
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int stream_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 size_t SSIZE_MAX ;
 TYPE_1__* block_Alloc (size_t) ;
 int block_Release (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_stream_Read (int *,int ,size_t) ;

block_t *vlc_stream_Block( stream_t *s, size_t size )
{
    if( unlikely(size > SSIZE_MAX) )
        return ((void*)0);

    block_t *block = block_Alloc( size );
    if( unlikely(block == ((void*)0)) )
        return ((void*)0);

    ssize_t val = vlc_stream_Read( s, block->p_buffer, size );
    if( val <= 0 )
    {
        block_Release( block );
        return ((void*)0);
    }

    block->i_buffer = val;
    return block;
}
