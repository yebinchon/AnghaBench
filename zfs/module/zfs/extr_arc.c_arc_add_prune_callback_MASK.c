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
struct TYPE_5__ {int /*<<< orphan*/  p_refcnt; int /*<<< orphan*/  p_node; void* p_private; int /*<<< orphan*/ * p_pfunc; } ;
typedef  TYPE_1__ arc_prune_t ;
typedef  int /*<<< orphan*/  arc_prune_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  arc_prune_list ; 
 int /*<<< orphan*/  arc_prune_mtx ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

arc_prune_t *
FUNC7(arc_prune_func_t *func, void *private)
{
	arc_prune_t *p;

	p = FUNC0(sizeof (*p), KM_SLEEP);
	p->p_pfunc = func;
	p->p_private = private;
	FUNC2(&p->p_node);
	FUNC6(&p->p_refcnt);

	FUNC3(&arc_prune_mtx);
	FUNC5(&p->p_refcnt, &arc_prune_list);
	FUNC1(&arc_prune_list, p);
	FUNC4(&arc_prune_mtx);

	return (p);
}