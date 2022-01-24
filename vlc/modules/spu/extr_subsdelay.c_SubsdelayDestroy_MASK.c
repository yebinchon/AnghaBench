#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_8__ {int /*<<< orphan*/  heap; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_FACTOR ; 
 int /*<<< orphan*/  CFG_MIN_ALPHA ; 
 int /*<<< orphan*/  CFG_MIN_START_STOP_INTERVAL ; 
 int /*<<< orphan*/  CFG_MIN_STOPS_INTERVAL ; 
 int /*<<< orphan*/  CFG_MIN_STOP_START_INTERVAL ; 
 int /*<<< orphan*/  CFG_MODE ; 
 int /*<<< orphan*/  CFG_OVERLAP ; 
 int /*<<< orphan*/  SubsdelayCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *) p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    FUNC0( &p_sys->heap );

    /* destroy parameters */

    FUNC2( p_filter, CFG_MODE, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_MODE );

    FUNC2( p_filter, CFG_FACTOR, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_FACTOR );

    FUNC2( p_filter, CFG_OVERLAP, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_OVERLAP );

    FUNC2( p_filter, CFG_MIN_ALPHA, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_MIN_ALPHA );

    FUNC2( p_filter, CFG_MIN_STOPS_INTERVAL, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_MIN_STOPS_INTERVAL );

    FUNC2( p_filter, CFG_MIN_STOP_START_INTERVAL, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_MIN_STOP_START_INTERVAL );

    FUNC2( p_filter, CFG_MIN_START_STOP_INTERVAL, SubsdelayCallback, p_sys );
    FUNC3( p_filter, CFG_MIN_START_STOP_INTERVAL );

    FUNC1( p_sys );
}