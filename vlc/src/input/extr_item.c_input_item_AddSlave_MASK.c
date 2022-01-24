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
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pp_slaves; int /*<<< orphan*/  i_slaves; } ;
typedef  TYPE_1__ input_item_t ;
struct TYPE_7__ {scalar_t__ i_priority; } ;
typedef  TYPE_2__ input_item_slave_t ;

/* Variables and functions */
 scalar_t__ SLAVE_PRIORITY_MATCH_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(input_item_t *p_item, input_item_slave_t *p_slave)
{
    if( p_item == NULL || p_slave == NULL
     || p_slave->i_priority < SLAVE_PRIORITY_MATCH_NONE )
        return VLC_EGENERIC;

    FUNC1( &p_item->lock );

    FUNC0(p_item->i_slaves, p_item->pp_slaves, p_slave);

    FUNC2( &p_item->lock );
    return VLC_SUCCESS;
}