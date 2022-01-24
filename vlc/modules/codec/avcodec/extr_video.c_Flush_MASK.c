#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_6__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  cc; int /*<<< orphan*/  framedrop; scalar_t__ i_late_frames; int /*<<< orphan*/ * p_context; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FRAMEDROP_NONE ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *p_context = p_sys->p_context;

    p_sys->i_late_frames = 0;
    p_sys->framedrop = FRAMEDROP_NONE;
    FUNC2( &p_sys->cc );

    /* Abort pictures in order to unblock all avcodec workers threads waiting
     * for a picture. This will avoid a deadlock between avcodec_flush_buffers
     * and workers threads */
    FUNC4( p_dec, true );

    /* do not flush buffers if codec hasn't been opened (theora/vorbis/VC1) */
    if( FUNC1( p_context ) )
        FUNC0( p_context );

    FUNC3(&p_sys->pts, VLC_TICK_INVALID); /* To make sure we recover properly */

    /* Reset cancel state to false */
    FUNC4( p_dec, false );
}