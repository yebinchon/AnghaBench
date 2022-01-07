
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_8__ {size_t i_size; int p_list; } ;
struct TYPE_10__ {TYPE_1__ remain; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_11__ {size_t i_buffer; int p_buffer; } ;
typedef TYPE_4__ block_t ;


 TYPE_4__* block_Alloc (size_t) ;
 int block_ChainAppend (int *,TYPE_4__*) ;
 int memcpy (int ,int const*,size_t) ;

__attribute__((used)) static bool RemainAdd( stream_t *p_stream, const uint8_t *p_data, size_t i_size )
{
    stream_sys_t *p_sys = p_stream->p_sys;
    if ( i_size == 0 )
        return 1;
    block_t *p_block = block_Alloc( i_size );
    if ( !p_block )
        return 0;
    memcpy( p_block->p_buffer, p_data, i_size );
    p_block->i_buffer = i_size;
    block_ChainAppend( & p_sys->remain.p_list, p_block );
    p_sys->remain.i_size += i_size;
    return 1;
}
