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
struct TYPE_4__ {int b_exit; size_t i_blocks; int /*<<< orphan*/ * pp_blocks; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_vout; int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ goom_thread_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( vlc_object_t *p_this )
{
    filter_t     *p_filter = (filter_t *)p_this;
    goom_thread_t *p_thread = p_filter->p_sys;

    /* Stop Goom Thread */
    FUNC6( &p_thread->lock );
    p_thread->b_exit = true;
    FUNC3( &p_thread->wait );
    FUNC7( &p_thread->lock );

    FUNC4( p_thread->thread, NULL );

    /* Free data */
    FUNC8( p_thread->p_vout );
    FUNC5( &p_thread->lock );
    FUNC2( &p_thread->wait );

    while( p_thread->i_blocks-- )
    {
        FUNC0( p_thread->pp_blocks[p_thread->i_blocks] );
    }

    FUNC1( p_thread );
}