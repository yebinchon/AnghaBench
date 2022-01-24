#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; scalar_t__ p_raw1394; int /*<<< orphan*/ * p_frame; TYPE_3__* p_ev; } ;
typedef  TYPE_2__ access_sys_t ;
struct TYPE_7__ {int /*<<< orphan*/ ** pp_last; int /*<<< orphan*/ * p_frame; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( vlc_object_t *p_this )
{
    stream_t     *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->p_ev )
    {
        /* stop the event handler */
        FUNC5( p_sys->p_ev->thread );

        if( p_sys->p_raw1394 )
            FUNC4( p_sys->p_raw1394 );

        FUNC6( p_sys->p_ev->thread, NULL );
        FUNC7( &p_sys->p_ev->lock );

        /* Cleanup frame data */
        if( p_sys->p_ev->p_frame )
        {
            FUNC1( p_sys->p_ev->p_frame );
            p_sys->p_ev->p_frame = NULL;
            p_sys->p_ev->pp_last = &p_sys->p_frame;
        }
        FUNC2( p_sys->p_ev );
    }

    if( p_sys->p_frame )
        FUNC1( p_sys->p_frame );
    if( p_sys->p_raw1394 )
        FUNC3( p_sys->p_raw1394 );

    FUNC0( p_access );

    FUNC7( &p_sys->lock );
}