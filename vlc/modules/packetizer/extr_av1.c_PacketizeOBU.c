
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_24__ {TYPE_4__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_25__ {int i_flags; size_t p_buffer; size_t i_buffer; void* i_pts; void* i_dts; struct TYPE_25__* p_next; } ;
typedef TYPE_3__ block_t ;
struct TYPE_23__ {TYPE_3__* p_chain; TYPE_3__** pp_chain_last; } ;
struct TYPE_26__ {int * p_sequence_header_block; TYPE_1__ obus; } ;
typedef TYPE_4__ av1_sys_t ;
typedef int AV1_OBU_iterator_ctx_t ;


 int AV1_OBUIsValid (size_t,size_t) ;
 int AV1_OBU_iterate_next (int *,int const**,size_t*) ;
 int AV1_OBU_iterator_init (int *,size_t,size_t) ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 TYPE_3__* GatherAndValidateChain (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* OutputQueues (TYPE_2__*,int ) ;
 int PacketizeFlush (TYPE_2__*) ;
 TYPE_3__* ParseOBUBlock (TYPE_2__*,TYPE_3__*) ;
 int UpdateDecoderFormat (TYPE_2__*) ;
 void* VLC_TICK_INVALID ;
 TYPE_3__* block_Alloc (size_t) ;
 int block_ChainLastAppend (TYPE_3__***,TYPE_3__*) ;
 int block_Release (TYPE_3__*) ;
 int memcpy (size_t,size_t,size_t) ;
 int msg_Warn (TYPE_2__*,char*) ;

__attribute__((used)) static block_t *PacketizeOBU(decoder_t *p_dec, block_t **pp_block)
{
    av1_sys_t *p_sys = p_dec->p_sys;

    block_t *p_block = pp_block ? *pp_block : ((void*)0);
    if(p_block)
    {
        if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY | BLOCK_FLAG_CORRUPTED) )
        {

            block_t *p_drain = PacketizeOBU( p_dec, ((void*)0) );
            if(p_drain)
                return p_drain;

            PacketizeFlush( p_dec );

            if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                block_Release( p_block );
                return ((void*)0);
            }
        }

        if(!AV1_OBUIsValid(p_block->p_buffer, p_block->i_buffer))
        {
            msg_Warn(p_dec,"fed with invalid OBU");
            block_Release(p_block);
            return ((void*)0);
        }
        *pp_block = ((void*)0);
        block_ChainLastAppend(&p_sys->obus.pp_chain_last, p_block);
    }

    block_t *p_output = ((void*)0);
    while(p_sys->obus.p_chain)
    {
        block_t *p_frag = p_sys->obus.p_chain;

        AV1_OBU_iterator_ctx_t it;
        AV1_OBU_iterator_init(&it, p_frag->p_buffer, p_frag->i_buffer);
        const uint8_t *p_obu; size_t i_obu;

        if(!AV1_OBU_iterate_next(&it, &p_obu, &i_obu))
        {
            msg_Warn(p_dec,"Invalid OBU header in sequence, discarding");

            p_sys->obus.p_chain = p_frag->p_next;
            if(p_frag->p_next == ((void*)0))
                p_sys->obus.pp_chain_last = &p_sys->obus.p_chain;
            else
                p_frag->p_next = ((void*)0);
            block_Release(p_frag);
            continue;
        }

        block_t *p_obublock;
        if(i_obu == p_frag->i_buffer)
        {
            p_sys->obus.p_chain = p_frag->p_next;
            if(p_frag->p_next == ((void*)0))
                p_sys->obus.pp_chain_last = &p_sys->obus.p_chain;
            else
                p_frag->p_next = ((void*)0);
            p_obublock = p_frag;
        }
        else
        {
            p_obublock = block_Alloc(i_obu);
            memcpy(p_obublock->p_buffer, p_frag->p_buffer, i_obu);
            p_frag->i_buffer -= i_obu;
            p_frag->p_buffer += i_obu;
            p_obublock->i_dts = p_frag->i_dts;
            p_obublock->i_pts = p_frag->i_pts;
            p_obublock->i_flags = p_frag->i_flags;
            p_frag->i_flags = 0;
            p_frag->i_dts = VLC_TICK_INVALID;
            p_frag->i_pts = VLC_TICK_INVALID;
        }

        p_output = ParseOBUBlock(p_dec, p_obublock);
        if(p_output)
            break;
    }


    if(!p_output && pp_block == ((void*)0))
        p_output = OutputQueues(p_dec, p_sys->p_sequence_header_block != ((void*)0));

    if(p_output)
    {
        p_output = GatherAndValidateChain(p_dec, p_output);
        UpdateDecoderFormat(p_dec);
    }

    return p_output;
}
