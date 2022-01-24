#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ p_va; int /*<<< orphan*/  cc; int /*<<< orphan*/ * p_context; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7( vlc_object_t *obj )
{
    decoder_t *p_dec = (decoder_t *)obj;
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;

    /* do not flush buffers if codec hasn't been opened (theora/vorbis/VC1) */
    if( FUNC2( ctx ) )
        FUNC0( ctx );

    FUNC3( &p_sys->cc );

    FUNC1( &ctx );

    if( p_sys->p_va )
        FUNC6( p_sys->p_va );

    FUNC5( &p_sys->lock );
    FUNC4( p_sys );
}