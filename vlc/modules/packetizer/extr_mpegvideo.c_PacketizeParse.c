
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_10__ {int i_next_block_flags; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_11__ {scalar_t__* p_buffer; int i_flags; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ PICTURE_STARTCODE ;
 TYPE_3__* ParseMPEGBlock (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static block_t *PacketizeParse( void *p_private, bool *pb_ts_used, block_t *p_block )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;


    *pb_ts_used = p_block->p_buffer[3] == PICTURE_STARTCODE;

    p_block = ParseMPEGBlock( p_dec, p_block );
    if( p_block )
    {
        p_block->i_flags |= p_sys->i_next_block_flags;
        p_sys->i_next_block_flags = 0;
    }
    else *pb_ts_used = 0;

    return p_block;
}
