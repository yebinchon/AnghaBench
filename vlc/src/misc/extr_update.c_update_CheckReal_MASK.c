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
struct TYPE_4__ {int /*<<< orphan*/  p_data; int /*<<< orphan*/  (* pf_callback ) (int /*<<< orphan*/ ,int) ;TYPE_2__* p_update; } ;
typedef  TYPE_1__ update_check_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 

void* FUNC7( void *obj )
{
    update_check_thread_t *p_uct = (update_check_thread_t *)obj;
    bool b_ret;
    int canc;

    canc = FUNC6 ();
    FUNC3( &p_uct->p_update->lock );

    FUNC0( p_uct->p_update );
    b_ret = FUNC1( p_uct->p_update );
    FUNC4( &p_uct->p_update->lock );

    if( p_uct->pf_callback )
        (p_uct->pf_callback)( p_uct->p_data, b_ret );

    FUNC5 (canc);
    return NULL;
}