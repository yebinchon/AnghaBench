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
struct TYPE_5__ {int /*<<< orphan*/  pp_children; int /*<<< orphan*/  i_children; } ;
typedef  TYPE_1__ input_item_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2( input_item_node_t *p_parent,
                                 input_item_node_t *p_child )
{
    FUNC1(p_parent != NULL);
    FUNC1(p_child != NULL);
    FUNC0(p_parent->i_children, p_parent->pp_children, p_child);
}