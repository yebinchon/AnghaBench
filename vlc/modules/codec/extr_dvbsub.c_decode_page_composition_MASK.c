#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  dvbsub_regiondef_t ;
typedef  int /*<<< orphan*/  dvbsub_page_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_10__ {int b_page; TYPE_5__* p_page; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  bs_t ;
struct TYPE_12__ {int i_version; int i_region_defs; int i_timeout; TYPE_3__* p_region_defs; } ;
struct TYPE_11__ {void* i_y; void* i_x; void* i_id; } ;

/* Variables and functions */
 int DVBSUB_PCS_STATE_ACQUISITION ; 
 int DVBSUB_PCS_STATE_CHANGE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_5__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 TYPE_3__* FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7( decoder_t *p_dec, bs_t *s, uint16_t i_segment_length )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    int i_version, i_state, i_timeout, i;

    /* A page is composed by 0 or more region */
    i_timeout = FUNC0( s, 8 );
    i_version = FUNC0( s, 4 );
    i_state = FUNC0( s, 2 );
    FUNC1( s, 2 ); /* Reserved */

    if( i_state == DVBSUB_PCS_STATE_CHANGE )
    {
        /* End of an epoch, reset decoder buffer */
#ifdef DEBUG_DVBSUB
        msg_Dbg( p_dec, "page composition mode change" );
#endif
        FUNC3( p_dec );
    }
    else if( !p_sys->p_page && ( i_state != DVBSUB_PCS_STATE_ACQUISITION ) &&
             ( i_state != DVBSUB_PCS_STATE_CHANGE ) )
    {
        /* Not a full PCS, we need to wait for one */
        FUNC5( p_dec, "didn't receive an acquisition page yet" );

#if 0
        /* Try to start decoding even without an acquisition page */
        bs_skip( s,  8 * (i_segment_length - 2) );
        return;
#endif
    }

#ifdef DEBUG_DVBSUB
    if( i_state == DVBSUB_PCS_STATE_ACQUISITION )
        msg_Dbg( p_dec, "acquisition page composition" );
#endif

    /* Check version number */
    if( p_sys->p_page && ( p_sys->p_page->i_version == i_version ) )
    {
        FUNC1( s,  8 * (i_segment_length - 2) );
        return;
    }
    else if( p_sys->p_page )
    {
        if( p_sys->p_page->i_region_defs )
            FUNC2( p_sys->p_page->p_region_defs );
        p_sys->p_page->p_region_defs = NULL;
        p_sys->p_page->i_region_defs = 0;
    }

    if( !p_sys->p_page )
    {
#ifdef DEBUG_DVBSUB
        msg_Dbg( p_dec, "new page" );
#endif
        /* Allocate a new page */
        p_sys->p_page = FUNC4( sizeof(dvbsub_page_t) );
        if( !p_sys->p_page )
            return;
    }

    p_sys->p_page->i_version = i_version;
    p_sys->p_page->i_timeout = i_timeout;
    p_sys->b_page = true;

    /* Number of regions */
    p_sys->p_page->i_region_defs = (i_segment_length - 2) / 6;

    if( p_sys->p_page->i_region_defs == 0 ) return;

    p_sys->p_page->p_region_defs =
        FUNC6( p_sys->p_page->i_region_defs, sizeof(dvbsub_regiondef_t) );
    if( p_sys->p_page->p_region_defs )
    {
        for( i = 0; i < p_sys->p_page->i_region_defs; i++ )
        {
            p_sys->p_page->p_region_defs[i].i_id = FUNC0( s, 8 );
            FUNC1( s, 8 ); /* Reserved */
            p_sys->p_page->p_region_defs[i].i_x = FUNC0( s, 16 );
            p_sys->p_page->p_region_defs[i].i_y = FUNC0( s, 16 );

#ifdef DEBUG_DVBSUB
            msg_Dbg( p_dec, "page_composition, region %i (%i,%i)",
                    i, p_sys->p_page->p_region_defs[i].i_x,
                    p_sys->p_page->p_region_defs[i].i_y );
#endif
        }
    }
}