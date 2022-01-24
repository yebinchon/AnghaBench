#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {scalar_t__ es; int /*<<< orphan*/  fmt; scalar_t__ b_configured; } ;
typedef  TYPE_2__ ps_track_t ;
struct TYPE_8__ {int /*<<< orphan*/  out; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; scalar_t__ b_created; } ;
struct TYPE_9__ {int i_title; int /*<<< orphan*/  dvdnav; int /*<<< orphan*/ * title; TYPE_2__* tk; int /*<<< orphan*/  event_lock; TYPE_1__ still; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 int PS_TK_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8( vlc_object_t *p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;

    /* Stop still image handler */
    if( p_sys->still.b_created )
        FUNC7( p_sys->still.timer );
    FUNC6( &p_sys->still.lock );
    FUNC6( &p_sys->event_lock );

    for( int i = 0; i < PS_TK_COUNT; i++ )
    {
        ps_track_t *tk = &p_sys->tk[i];
        if( tk->b_configured )
        {
            FUNC2( &tk->fmt );
            if( tk->es ) FUNC3( p_demux->out, tk->es );
        }
    }

    /* Free the array of titles */
    for( int i = 0; i < p_sys->i_title; i++ )
        FUNC5( p_sys->title[i] );
    FUNC0( p_sys->i_title, p_sys->title );

    FUNC1( p_sys->dvdnav );
    FUNC4( p_sys );
}