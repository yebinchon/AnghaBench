#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * tqent_taskq; scalar_t__ tqent_flags; int /*<<< orphan*/ * tqent_arg; int /*<<< orphan*/ * tqent_func; scalar_t__ tqent_id; int /*<<< orphan*/  tqent_list; int /*<<< orphan*/  tqent_timer; int /*<<< orphan*/  tqent_waitq; int /*<<< orphan*/  tqent_lock; } ;
typedef  TYPE_1__ taskq_ent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(taskq_ent_t *t)
{
	FUNC2(&t->tqent_lock);
	FUNC1(&t->tqent_waitq);
	FUNC3(&t->tqent_timer, NULL, 0);
	FUNC0(&t->tqent_list);
	t->tqent_id = 0;
	t->tqent_func = NULL;
	t->tqent_arg = NULL;
	t->tqent_flags = 0;
	t->tqent_taskq = NULL;
}