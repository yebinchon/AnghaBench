#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_17__ {scalar_t__ priv; } ;
typedef  TYPE_2__ ts_stream_processor_t ;
typedef  int /*<<< orphan*/  ts_pmt_t ;
struct TYPE_18__ {int /*<<< orphan*/  i_sl_es_id; int /*<<< orphan*/ * p_program; } ;
typedef  TYPE_3__ ts_es_t ;
struct TYPE_19__ {scalar_t__ b_au_end; scalar_t__ b_au_start; scalar_t__ i_pts; scalar_t__ i_dts; scalar_t__ i_size; } ;
typedef  TYPE_4__ sl_header_data ;
struct TYPE_20__ {int /*<<< orphan*/  sl_descr; } ;
typedef  TYPE_5__ es_mpeg4_descriptor_t ;
struct TYPE_21__ {scalar_t__ i_pts; scalar_t__ i_dts; int /*<<< orphan*/  p_buffer; int /*<<< orphan*/  i_buffer; } ;
typedef  TYPE_6__ block_t ;
struct TYPE_22__ {int /*<<< orphan*/ * p_au; int /*<<< orphan*/ ** pp_au_last; TYPE_1__* p_stream; } ;
struct TYPE_16__ {TYPE_3__* p_es; } ;
typedef  TYPE_7__ SL_stream_processor_context_t ;

/* Variables and functions */
 TYPE_4__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ***,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 

__attribute__((used)) static block_t * FUNC6( ts_stream_processor_t *h, uint8_t i_stream_id, block_t *p_block )
{
    SL_stream_processor_context_t *ctx = (SL_stream_processor_context_t *) h->priv;
    ts_es_t *p_es = ctx->p_stream->p_es;
    ts_pmt_t *p_pmt = p_es->p_program;

    if( ((i_stream_id & 0xFE) != 0xFA) /* 0xFA || 0xFB */ )
    {
        FUNC5( p_block );
        return NULL;
    }

    const es_mpeg4_descriptor_t *p_desc = FUNC1( p_pmt, p_es->i_sl_es_id );
    if(!p_desc)
    {
        FUNC5( p_block );
        p_block = NULL;
    }
    else
    {
        sl_header_data header = FUNC0( p_block->i_buffer, p_block->p_buffer,
                                                &p_desc->sl_descr );
        p_block->i_buffer -= header.i_size;
        p_block->p_buffer += header.i_size;
        p_block->i_dts = header.i_dts ? header.i_dts : p_block->i_dts;
        p_block->i_pts = header.i_pts ? header.i_pts : p_block->i_pts;

        /* Assemble access units */
        if( header.b_au_start && ctx->p_au )
        {
            FUNC4( ctx->p_au );
            ctx->p_au = NULL;
            ctx->pp_au_last = &ctx->p_au;
        }
        FUNC3( &ctx->pp_au_last, p_block );
        p_block = NULL;
        if( header.b_au_end && ctx->p_au )
        {
            p_block = FUNC2( ctx->p_au );
            ctx->p_au = NULL;
            ctx->pp_au_last = &ctx->p_au;
        }
    }

    return p_block;
}