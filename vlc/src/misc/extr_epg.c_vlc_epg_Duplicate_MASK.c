#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t i_event; scalar_t__* pp_event; scalar_t__ p_current; int /*<<< orphan*/  b_present; int /*<<< orphan*/ * psz_name; int /*<<< orphan*/  i_source_id; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_1__ vlc_epg_t ;
typedef  int /*<<< orphan*/  vlc_epg_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 

vlc_epg_t * FUNC4( const vlc_epg_t *p_src )
{
    vlc_epg_t *p_epg = FUNC2( p_src->i_id, p_src->i_source_id );
    if( p_epg )
    {
        p_epg->psz_name = ( p_src->psz_name ) ? FUNC1( p_src->psz_name ) : NULL;
        p_epg->b_present = p_src->b_present;
        for( size_t i=0; i<p_src->i_event; i++ )
        {
            vlc_epg_event_t *p_dup = FUNC3( p_src->pp_event[i] );
            if( p_dup )
            {
                if( p_src->p_current == p_src->pp_event[i] )
                    p_epg->p_current = p_dup;
                FUNC0( p_epg->i_event, p_epg->pp_event, p_dup );
            }
        }
    }
    return p_epg;
}