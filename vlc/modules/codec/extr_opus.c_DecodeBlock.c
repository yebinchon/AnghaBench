
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int granulepos; scalar_t__ packetno; scalar_t__ e_o_s; scalar_t__ b_o_s; int bytes; int packet; } ;
typedef TYPE_1__ ogg_packet ;
struct TYPE_15__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_16__ {int b_has_headers; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_17__ {int i_buffer; int p_buffer; } ;
typedef TYPE_4__ block_t ;


 scalar_t__ ProcessHeaders (TYPE_2__*) ;
 TYPE_4__* ProcessPacket (TYPE_2__*,TYPE_1__*,TYPE_4__*) ;
 int block_Release (TYPE_4__*) ;

__attribute__((used)) static block_t *DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    ogg_packet oggpacket;


    oggpacket.packet = p_block->p_buffer;
    oggpacket.bytes = p_block->i_buffer;

    oggpacket.granulepos = -1;
    oggpacket.b_o_s = 0;
    oggpacket.e_o_s = 0;
    oggpacket.packetno = 0;


    if( !p_sys->b_has_headers )
    {
        if( ProcessHeaders( p_dec ) )
        {
            block_Release( p_block );
            return ((void*)0);
        }
        p_sys->b_has_headers = 1;
    }

    return ProcessPacket( p_dec, &oggpacket, p_block );
}
