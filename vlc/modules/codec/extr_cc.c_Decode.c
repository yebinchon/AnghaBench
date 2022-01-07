
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ i_reorder_depth; } ;
struct TYPE_14__ {TYPE_1__ cc; } ;
struct TYPE_15__ {TYPE_2__ subs; } ;
struct TYPE_16__ {TYPE_3__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_17__ {scalar_t__ i_reorder_depth; int p_cea708; int p_dtvcc; scalar_t__ p_eia608; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_18__ {int i_flags; int i_buffer; } ;
typedef TYPE_6__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_TYPE_B ;
 int CEA708_DTVCC_Demuxer_Flush (int ) ;
 int CEA708_Decoder_Flush (int ) ;
 scalar_t__ DoDecode (TYPE_4__*,int) ;
 int Eia608Init (scalar_t__) ;
 int Push (TYPE_4__*,TYPE_6__*) ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_6__*) ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_block )
    {

        if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY | BLOCK_FLAG_CORRUPTED) )
        {

            for( ; DoDecode( p_dec, 1 ) ; );
            if( p_sys->p_eia608 )
            {
                Eia608Init( p_sys->p_eia608 );
            }
            else
            {
                CEA708_DTVCC_Demuxer_Flush( p_sys->p_dtvcc );
                CEA708_Decoder_Flush( p_sys->p_cea708 );
            }

            if( (p_block->i_flags & BLOCK_FLAG_CORRUPTED) || p_block->i_buffer < 1 )
            {
                block_Release( p_block );
                return VLCDEC_SUCCESS;
            }
        }






        if( p_sys->i_reorder_depth == 0 )
        {


            if( (p_block->i_flags & BLOCK_FLAG_TYPE_B) == 0 )
                for( ; DoDecode( p_dec, 1 ); );
        }

        Push( p_dec, p_block );
    }

    const bool b_no_reorder = (p_dec->fmt_in.subs.cc.i_reorder_depth < 0);
    for( ; DoDecode( p_dec, (p_block == ((void*)0)) || b_no_reorder ); );

    return VLCDEC_SUCCESS;
}
