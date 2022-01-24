#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  pf_sub_filter; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_9__ {int /*<<< orphan*/  heap; void* i_min_start_stop_interval; void* i_min_stop_start_interval; void* i_min_stops_interval; void* i_min_alpha; void* i_overlap; int /*<<< orphan*/  f_factor; void* i_mode; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_FACTOR ; 
 int /*<<< orphan*/  CFG_MIN_ALPHA ; 
 int /*<<< orphan*/  CFG_MIN_START_STOP_INTERVAL ; 
 int /*<<< orphan*/  CFG_MIN_STOPS_INTERVAL ; 
 int /*<<< orphan*/  CFG_MIN_STOP_START_INTERVAL ; 
 int /*<<< orphan*/  CFG_MODE ; 
 int /*<<< orphan*/  CFG_OVERLAP ; 
 int /*<<< orphan*/  CFG_PREFIX ; 
 int /*<<< orphan*/  SubsdelayCallback ; 
 int /*<<< orphan*/  SubsdelayFilter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  ppsz_filter_options ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *) p_this;
    filter_sys_t *p_sys;

    /* allocate structure */
    p_sys = (filter_sys_t*) FUNC3( sizeof(filter_sys_t) );

    if( !p_sys )
    {
        return VLC_ENOMEM;
    }

    /* init parameters */

    p_sys->i_mode = FUNC6( p_filter, CFG_MODE );
    FUNC4( p_filter, CFG_MODE, SubsdelayCallback, p_sys );

    p_sys->f_factor = FUNC5( p_filter, CFG_FACTOR );
    FUNC4( p_filter, CFG_FACTOR, SubsdelayCallback, p_sys );

    p_sys->i_overlap = FUNC6( p_filter, CFG_OVERLAP );
    FUNC4( p_filter, CFG_OVERLAP, SubsdelayCallback, p_sys );

    p_sys->i_min_alpha = FUNC6( p_filter, CFG_MIN_ALPHA );
    FUNC4( p_filter, CFG_MIN_ALPHA, SubsdelayCallback, p_sys );

    p_sys->i_min_stops_interval
            = FUNC1( FUNC6( p_filter, CFG_MIN_STOPS_INTERVAL ) );
    FUNC4( p_filter, CFG_MIN_STOPS_INTERVAL, SubsdelayCallback, p_sys );

    p_sys->i_min_stop_start_interval
            = FUNC1( FUNC6( p_filter, CFG_MIN_STOP_START_INTERVAL ) );
    FUNC4( p_filter, CFG_MIN_STOP_START_INTERVAL, SubsdelayCallback, p_sys );

    p_sys->i_min_start_stop_interval
            = FUNC1( FUNC6( p_filter, CFG_MIN_START_STOP_INTERVAL ) );
    FUNC4( p_filter, CFG_MIN_START_STOP_INTERVAL, SubsdelayCallback, p_sys );

    p_filter->p_sys = p_sys;
    p_filter->pf_sub_filter = SubsdelayFilter;

    FUNC2( p_filter, CFG_PREFIX, ppsz_filter_options, p_filter->p_cfg );

    FUNC0( &p_sys->heap );

    return VLC_SUCCESS;
}