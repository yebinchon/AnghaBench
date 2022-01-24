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
struct TYPE_3__ {int /*<<< orphan*/  rll_lock; int /*<<< orphan*/ * rll_writer; int /*<<< orphan*/  rll_cv; scalar_t__ rll_readers; } ;
typedef  TYPE_1__ rll_t ;
typedef  scalar_t__ rl_type_t ;

/* Variables and functions */
 scalar_t__ RL_READER ; 
 int /*<<< orphan*/ * curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(rll_t *rll, rl_type_t type)
{
	FUNC1(&rll->rll_lock);

	if (type == RL_READER) {
		while (rll->rll_writer != NULL)
			(void) FUNC0(&rll->rll_cv, &rll->rll_lock);
		rll->rll_readers++;
	} else {
		while (rll->rll_writer != NULL || rll->rll_readers)
			(void) FUNC0(&rll->rll_cv, &rll->rll_lock);
		rll->rll_writer = curthread;
	}

	FUNC2(&rll->rll_lock);
}