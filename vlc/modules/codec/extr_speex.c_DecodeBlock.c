
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int granulepos; scalar_t__ packetno; scalar_t__ e_o_s; scalar_t__ b_o_s; scalar_t__ bytes; int * packet; } ;
typedef TYPE_2__ ogg_packet ;
struct TYPE_18__ {int p_extra; } ;
struct TYPE_20__ {TYPE_1__ fmt_in; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_21__ {int b_has_headers; scalar_t__ b_packetizer; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_22__ {int i_flags; scalar_t__ i_buffer; int * p_buffer; } ;
typedef TYPE_5__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 scalar_t__ CreateDefaultHeader (TYPE_3__*) ;
 int Flush (TYPE_3__*) ;
 scalar_t__ ProcessHeaders (TYPE_3__*) ;
 TYPE_5__* ProcessPacket (TYPE_3__*,TYPE_2__*,TYPE_5__**) ;
 int block_Release (TYPE_5__*) ;
 int msg_Warn (TYPE_3__*,char*) ;

__attribute__((used)) static block_t *DecodeBlock( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    ogg_packet oggpacket;

    block_t *block = *pp_block;

    if( block != ((void*)0) )
    {
        if( block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY) )
        {
            Flush( p_dec );
            if( block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                block_Release( block );
                *pp_block = ((void*)0);
                return ((void*)0);
            }
        }

        oggpacket.packet = block->p_buffer;
        oggpacket.bytes = block->i_buffer;
    }
    else
    {
        if( p_sys->b_packetizer ) return ((void*)0);


        oggpacket.packet = ((void*)0);
        oggpacket.bytes = 0;
    }

    oggpacket.granulepos = -1;
    oggpacket.b_o_s = 0;
    oggpacket.e_o_s = 0;
    oggpacket.packetno = 0;


    if( !p_sys->b_has_headers )
    {
        if( !p_dec->fmt_in.p_extra )
        {
            msg_Warn( p_dec, "Header missing, using default settings" );

            if( CreateDefaultHeader( p_dec ) )
            {
                if( block != ((void*)0) )
                    block_Release( block );
                return ((void*)0);
            }
        }
        else if( ProcessHeaders( p_dec ) )
        {
            if( block != ((void*)0) )
                block_Release( block );
            return ((void*)0);
        }
        p_sys->b_has_headers = 1;
    }

    return ProcessPacket( p_dec, &oggpacket, pp_block );
}
