#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ulw_list; } ;
typedef  TYPE_1__ uu_list_walk_t ;
typedef  int /*<<< orphan*/  uu_list_t ;
typedef  int /*<<< orphan*/  uu_list_node_impl_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void *
FUNC2(uu_list_walk_t *wp)
{
	uu_list_t *lp = wp->ulw_list;
	uu_list_node_impl_t *np = FUNC1(wp, lp);

	if (np == NULL)
		return (NULL);

	return (FUNC0(lp, np));
}