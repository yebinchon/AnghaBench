
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {scalar_t__ priv; } ;
typedef TYPE_2__ ts_stream_processor_t ;
typedef int ts_pmt_t ;
struct TYPE_18__ {int i_sl_es_id; int * p_program; } ;
typedef TYPE_3__ ts_es_t ;
struct TYPE_19__ {scalar_t__ b_au_end; scalar_t__ b_au_start; scalar_t__ i_pts; scalar_t__ i_dts; scalar_t__ i_size; } ;
typedef TYPE_4__ sl_header_data ;
struct TYPE_20__ {int sl_descr; } ;
typedef TYPE_5__ es_mpeg4_descriptor_t ;
struct TYPE_21__ {scalar_t__ i_pts; scalar_t__ i_dts; int p_buffer; int i_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_22__ {int * p_au; int ** pp_au_last; TYPE_1__* p_stream; } ;
struct TYPE_16__ {TYPE_3__* p_es; } ;
typedef TYPE_7__ SL_stream_processor_context_t ;


 TYPE_4__ DecodeSLHeader (int ,int ,int *) ;
 TYPE_5__* GetMPEG4DescByEsId (int *,int ) ;
 TYPE_6__* block_ChainGather (int *) ;
 int block_ChainLastAppend (int ***,TYPE_6__*) ;
 int block_ChainRelease (int *) ;
 int block_Release (TYPE_6__*) ;

__attribute__((used)) static block_t * SL_stream_processor_Push( ts_stream_processor_t *h, uint8_t i_stream_id, block_t *p_block )
{
    SL_stream_processor_context_t *ctx = (SL_stream_processor_context_t *) h->priv;
    ts_es_t *p_es = ctx->p_stream->p_es;
    ts_pmt_t *p_pmt = p_es->p_program;

    if( ((i_stream_id & 0xFE) != 0xFA) )
    {
        block_Release( p_block );
        return ((void*)0);
    }

    const es_mpeg4_descriptor_t *p_desc = GetMPEG4DescByEsId( p_pmt, p_es->i_sl_es_id );
    if(!p_desc)
    {
        block_Release( p_block );
        p_block = ((void*)0);
    }
    else
    {
        sl_header_data header = DecodeSLHeader( p_block->i_buffer, p_block->p_buffer,
                                                &p_desc->sl_descr );
        p_block->i_buffer -= header.i_size;
        p_block->p_buffer += header.i_size;
        p_block->i_dts = header.i_dts ? header.i_dts : p_block->i_dts;
        p_block->i_pts = header.i_pts ? header.i_pts : p_block->i_pts;


        if( header.b_au_start && ctx->p_au )
        {
            block_ChainRelease( ctx->p_au );
            ctx->p_au = ((void*)0);
            ctx->pp_au_last = &ctx->p_au;
        }
        block_ChainLastAppend( &ctx->pp_au_last, p_block );
        p_block = ((void*)0);
        if( header.b_au_end && ctx->p_au )
        {
            p_block = block_ChainGather( ctx->p_au );
            ctx->p_au = ((void*)0);
            ctx->pp_au_last = &ctx->p_au;
        }
    }

    return p_block;
}
