#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_34__ {scalar_t__ p_next; int /*<<< orphan*/ * p_segments; } ;
struct TYPE_32__ {scalar_t__ i_bytes; } ;
struct TYPE_35__ {TYPE_3__ updt; TYPE_1__ bgbitmap; } ;
typedef  TYPE_4__ ttml_region_t ;
struct TYPE_31__ {scalar_t__ base; } ;
struct TYPE_36__ {TYPE_12__ begin; TYPE_12__ dur; TYPE_12__ end; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_5__ tt_timings_t ;
typedef  int /*<<< orphan*/  tt_time_t ;
typedef  int /*<<< orphan*/  tt_node_t ;
typedef  int /*<<< orphan*/  tt_basenode_t ;
struct TYPE_37__ {int b_ephemer; int b_absolute; scalar_t__ i_stop; scalar_t__ i_start; } ;
typedef  TYPE_6__ subpicture_t ;
struct TYPE_38__ {TYPE_8__* p_sys; } ;
typedef  TYPE_7__ decoder_t ;
struct TYPE_33__ {scalar_t__ i_offset; scalar_t__ i_prev_segment_start_time; } ;
struct TYPE_39__ {TYPE_2__ pes; } ;
typedef  TYPE_8__ decoder_sys_t ;
struct TYPE_40__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; scalar_t__ i_length; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_9__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_6__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  TT_TIMINGS_PARALLEL ; 
 int VLCDEC_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 scalar_t__ VLC_TICK_INVALID ; 
 TYPE_6__* FUNC5 (TYPE_7__*) ; 
 TYPE_6__* FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC16( decoder_t *p_dec, const block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    tt_time_t *p_timings_array = NULL;
    size_t   i_timings_count = 0;

    /* We Only support absolute timings */
    tt_timings_t temporal_extent;
    temporal_extent.i_type = TT_TIMINGS_PARALLEL;
    FUNC13( &temporal_extent.begin );
    FUNC13( &temporal_extent.end );
    FUNC13( &temporal_extent.dur );
    temporal_extent.begin.base = 0;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        return VLCDEC_SUCCESS;

    /* We cannot display a subpicture with no date */
    if( p_block->i_pts == VLC_TICK_INVALID )
    {
        FUNC9( p_dec, "subtitle without a date" );
        return VLCDEC_SUCCESS;
    }

    tt_node_t *p_rootnode = FUNC1( p_dec, p_block->p_buffer, p_block->i_buffer );
    if( !p_rootnode )
        return VLCDEC_SUCCESS;

    FUNC14( (tt_basenode_t *) p_rootnode, &temporal_extent,
                        &p_timings_array, &i_timings_count );

#ifdef TTML_DEBUG
    for( size_t i=0; i<i_timings_count; i++ )
        printf("%ld ", tt_time_Convert( &p_timings_array[i] ) );
    printf("\n");
#endif
    vlc_tick_t i_block_start_time = p_block->i_dts - p_sys->pes.i_offset;

    if(FUNC4(p_dec) && i_block_start_time < p_sys->pes.i_prev_segment_start_time )
        i_block_start_time = p_sys->pes.i_prev_segment_start_time;

    for( size_t i=0; i+1 < i_timings_count; i++ )
    {
        /* We Only support absolute timings (2) */
        if( FUNC12( &p_timings_array[i] ) + VLC_TICK_0 < i_block_start_time )
            continue;

        if( !FUNC4(p_dec) &&
            FUNC12( &p_timings_array[i] ) + VLC_TICK_0 > i_block_start_time + p_block->i_length )
            break;

        if( FUNC4(p_dec) && p_sys->pes.i_prev_segment_start_time < FUNC12( &p_timings_array[i] ) )
            p_sys->pes.i_prev_segment_start_time = FUNC12( &p_timings_array[i] );

        bool b_bitmap_regions = false;
        subpicture_t *p_spu = NULL;
        ttml_region_t *p_regions = FUNC0( p_rootnode, p_timings_array[i] );
        if( p_regions )
        {
            if( p_regions->bgbitmap.i_bytes > 0 && p_regions->updt.p_segments == NULL )
            {
                b_bitmap_regions = true;
                p_spu = FUNC6( p_dec );
            }
            else
            {
                p_spu = FUNC5( p_dec );
            }
        }

        if( p_regions && p_spu )
        {
            p_spu->i_start    = p_sys->pes.i_offset +
                                VLC_TICK_0 + FUNC12( &p_timings_array[i] );
            p_spu->i_stop     = p_sys->pes.i_offset +
                                VLC_TICK_0 + FUNC12( &p_timings_array[i+1] ) - 1;
            p_spu->b_ephemer  = true;
            p_spu->b_absolute = true;

            if( !b_bitmap_regions ) /* TEXT regions */
                FUNC3( p_dec, p_spu, p_regions );
            else /* BITMAP regions */
                FUNC2( p_dec, p_spu, p_regions );
        }

        /* cleanup */
        while( p_regions )
        {
            ttml_region_t *p_nextregion = (ttml_region_t *) p_regions->updt.p_next;
            FUNC15( p_regions );
            p_regions = p_nextregion;
        }

        if( p_spu )
            FUNC7( p_dec, p_spu );
    }

    FUNC11( p_rootnode );

    FUNC8( p_timings_array );

    return VLCDEC_SUCCESS;
}