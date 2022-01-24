#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* pf_destroy ) (TYPE_2__*) ;} ;
struct TYPE_7__ {struct TYPE_7__* p_private; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ updater; int /*<<< orphan*/ * p_region; } ;
typedef  TYPE_2__ subpicture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( subpicture_t *p_subpic )
{
    FUNC2( p_subpic->p_region );
    p_subpic->p_region = NULL;

    if( p_subpic->updater.pf_destroy )
        p_subpic->updater.pf_destroy( p_subpic );

    if( p_subpic->p_private )
    {
        FUNC3( &p_subpic->p_private->src );
        FUNC3( &p_subpic->p_private->dst );
    }

    FUNC0( p_subpic->p_private );
    FUNC0( p_subpic );
}