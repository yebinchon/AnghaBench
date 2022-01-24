#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_acknowledge; int /*<<< orphan*/  p_fifo; scalar_t__ b_idle; scalar_t__ paused; int /*<<< orphan*/  b_has_data; int /*<<< orphan*/  b_waiting; } ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );

    FUNC0( p_owner->b_waiting );

    FUNC7( &p_owner->lock );
    while( !p_owner->b_has_data )
    {
        /* Don't need to lock p_owner->paused since it's only modified by the
         * owner */
        if( p_owner->paused )
            break;
        FUNC5( p_owner->p_fifo );
        if( p_owner->b_idle && FUNC4( p_owner->p_fifo ) )
        {
            FUNC2( p_dec, "buffer deadlock prevented" );
            FUNC6( p_owner->p_fifo );
            break;
        }
        FUNC6( p_owner->p_fifo );
        FUNC3( &p_owner->wait_acknowledge, &p_owner->lock );
    }
    FUNC8( &p_owner->lock );
}