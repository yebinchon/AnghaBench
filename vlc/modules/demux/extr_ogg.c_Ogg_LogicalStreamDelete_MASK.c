#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  p_blocks; } ;
struct TYPE_10__ {TYPE_1__ queue; int /*<<< orphan*/ * p_skel; int /*<<< orphan*/ * idx; int /*<<< orphan*/  fmt; int /*<<< orphan*/  fmt_old; struct TYPE_10__* p_headers; int /*<<< orphan*/  os; scalar_t__ p_es; } ;
typedef  TYPE_2__ logical_stream_t ;
struct TYPE_11__ {int /*<<< orphan*/  out; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_12__ {TYPE_2__* p_skelstream; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8( demux_t *p_demux, logical_stream_t *p_stream )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_stream->p_es )
        FUNC4( p_demux->out, p_stream->p_es );

    FUNC6( &p_stream->os );
    FUNC5( p_stream->p_headers );

    FUNC0( p_stream );

    FUNC3( &p_stream->fmt_old );
    FUNC3( &p_stream->fmt );

    if ( p_stream->idx != NULL)
    {
        FUNC7( p_stream->idx );
    }

    FUNC1( p_stream->p_skel );
    p_stream->p_skel = NULL;
    if( p_sys->p_skelstream == p_stream )
        p_sys->p_skelstream = NULL;

    /* Shouldn't happen */
    FUNC2( p_stream->queue.p_blocks );

    FUNC5( p_stream );
}