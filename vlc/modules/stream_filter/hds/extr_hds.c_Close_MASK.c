#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_10__ {TYPE_3__** pp_elems; } ;
struct TYPE_8__ {int closed; int /*<<< orphan*/  live_thread; scalar_t__ live; int /*<<< orphan*/  dl_thread; TYPE_4__ hds_streams; } ;
typedef  TYPE_2__ stream_sys_t ;
struct TYPE_9__ {int /*<<< orphan*/  dl_cond; } ;
typedef  TYPE_3__ hds_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( vlc_object_t *p_this )
{
    stream_t *s = (stream_t*)p_this;
    stream_sys_t *p_sys = s->p_sys;

    // TODO: Change here for selectable stream
    hds_stream_t *stream = FUNC2(&p_sys->hds_streams) ?
        p_sys->hds_streams.pp_elems[0] : NULL;

    p_sys->closed = true;
    if (stream)
        FUNC3( & stream->dl_cond );

    FUNC4( p_sys->dl_thread, NULL );

    if( p_sys->live )
    {
        FUNC4( p_sys->live_thread, NULL );
    }

    FUNC0( p_sys );
    FUNC1( p_sys );
}