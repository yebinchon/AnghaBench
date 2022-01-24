#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int uint8_t ;
struct TYPE_17__ {int i_current; int /*<<< orphan*/  i_first; } ;
struct TYPE_19__ {TYPE_1__ pcr; } ;
typedef  TYPE_3__ ts_pmt_t ;
struct TYPE_18__ {scalar_t__ i_codec; } ;
struct TYPE_20__ {int /*<<< orphan*/  b_interlaced; TYPE_2__ fmt; TYPE_3__* p_program; } ;
typedef  TYPE_4__ ts_es_t ;
typedef  int stime_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_21__ {size_t i_buffer; char* p_buffer; scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 scalar_t__ CLOCK_FREQ ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ VLC_CODEC_ARIB_A ; 
 scalar_t__ VLC_CODEC_ARIB_C ; 
 scalar_t__ VLC_CODEC_JPEG2000 ; 
 scalar_t__ VLC_CODEC_OPUS ; 
 scalar_t__ VLC_CODEC_SUBT ; 
 scalar_t__ VLC_CODEC_TELETEXT ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 TYPE_5__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static block_t * FUNC10( demux_t *p_demux, ts_es_t *p_es,
                                  size_t i_pes_size, uint8_t i_stream_id,
                                  block_t *p_block )
{
    if(!p_block)
        return NULL;

    if( p_es->fmt.i_codec == VLC_CODEC_SUBT )
    {
        if( i_pes_size > 0 && p_block->i_buffer > i_pes_size )
        {
            p_block->i_buffer = i_pes_size;
        }
        /* Append a \0 */
        p_block = FUNC7( p_block, 0, p_block->i_buffer + 1 );
        if( p_block )
            p_block->p_buffer[p_block->i_buffer -1] = '\0';
    }
    else if( p_es->fmt.i_codec == VLC_CODEC_TELETEXT )
    {
        const ts_pmt_t *p_pmt = p_es->p_program;
        if( p_block->i_pts != VLC_TICK_INVALID &&
            p_pmt->pcr.i_current > -1 )
        {
            /* Teletext can have totally offset timestamps... RAI1, German */
            vlc_tick_t i_pcr = FUNC0(FUNC5( p_pmt->pcr.i_first,
                                                               p_pmt->pcr.i_current ));
            if( i_pcr < p_block->i_pts || i_pcr - p_block->i_pts > CLOCK_FREQ )
                p_block->i_dts = p_block->i_pts = VLC_TICK_INVALID;
        }
        if( p_block->i_pts == VLC_TICK_INVALID )
        {
            /* Teletext may have missing PTS (ETSI EN 300 472 Annexe A)
             * In this case use the last PCR + 40ms */
            stime_t i_ts = FUNC1( p_es->p_program );
            if( FUNC4(i_ts) )
            {
                i_ts = FUNC5( p_pmt->pcr.i_first, i_ts );
                p_block->i_dts = p_block->i_pts = FUNC0(i_ts) + FUNC6(40);
            }
        }
    }
    else if( p_es->fmt.i_codec == VLC_CODEC_ARIB_A ||
             p_es->fmt.i_codec == VLC_CODEC_ARIB_C )
    {
        if( p_block->i_pts == VLC_TICK_INVALID )
        {
            if( i_pes_size > 0 && p_block->i_buffer > i_pes_size )
            {
                p_block->i_buffer = i_pes_size;
            }
            /* Append a \0 */
            p_block = FUNC7( p_block, 0, p_block->i_buffer + 1 );
            if( p_block )
                p_block->p_buffer[p_block->i_buffer -1] = '\0';
        }
    }
    else if( p_es->fmt.i_codec == VLC_CODEC_OPUS)
    {
        p_block = FUNC3(p_demux, p_block);
    }
    else if( p_es->fmt.i_codec == VLC_CODEC_JPEG2000 )
    {
        if( FUNC9(i_stream_id != 0xBD) )
        {
            FUNC8( p_block );
            p_block = NULL;
        }
        else
        {
            p_block = FUNC2( p_demux, p_block, p_es->b_interlaced );
        }
    }

    return p_block;
}