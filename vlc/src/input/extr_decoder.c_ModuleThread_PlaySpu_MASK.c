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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_5__ {scalar_t__ i_start; } ;
typedef  TYPE_1__ subpicture_t ;
struct decoder_owner {int b_has_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_acknowledge; scalar_t__ b_waiting; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  dec; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7( struct decoder_owner *p_owner, subpicture_t *p_subpic )
{
    decoder_t *p_dec = &p_owner->dec;
    vout_thread_t *p_vout = p_owner->p_vout;

    /* */
    if( p_subpic->i_start == VLC_TICK_INVALID )
    {
        FUNC1( p_dec, "non-dated spu buffer received" );
        FUNC2( p_subpic );
        return;
    }

    /* */
    FUNC4( &p_owner->lock );

    if( p_owner->b_waiting )
    {
        p_owner->b_has_data = true;
        FUNC3( &p_owner->wait_acknowledge );
    }

    FUNC0( p_owner );
    FUNC5( &p_owner->lock );

    if( p_subpic->i_start == VLC_TICK_INVALID )
    {
        FUNC2( p_subpic );
        return;
    }

    FUNC6( p_vout, p_subpic );
}