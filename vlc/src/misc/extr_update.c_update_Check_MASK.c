#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_check; } ;
typedef  TYPE_1__ update_t ;
struct TYPE_9__ {void (* pf_callback ) (void*,int) ;int /*<<< orphan*/  thread; void* p_data; TYPE_1__* p_update; } ;
typedef  TYPE_2__ update_check_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  update_CheckReal ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5( update_t *p_update, void (*pf_callback)( void*, bool ), void *p_data )
{
    FUNC0( p_update );

    // If the object already exist, destroy it
    if( p_update->p_check )
    {
        FUNC4( p_update->p_check->thread, NULL );
        FUNC2( p_update->p_check );
    }

    update_check_thread_t *p_uct = FUNC1( 1, sizeof( *p_uct ) );
    if( !p_uct ) return;

    p_uct->p_update = p_update;
    p_update->p_check = p_uct;
    p_uct->pf_callback = pf_callback;
    p_uct->p_data = p_data;

    FUNC3( &p_uct->thread, update_CheckReal, p_uct, VLC_THREAD_PRIORITY_LOW );
}