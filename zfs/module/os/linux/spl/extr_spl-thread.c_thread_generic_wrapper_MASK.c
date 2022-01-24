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
struct TYPE_3__ {scalar_t__ tp_magic; void (* tp_func ) (void*) ;int tp_name_size; struct TYPE_3__* tp_name; int /*<<< orphan*/  tp_pri; int /*<<< orphan*/  tp_state; void* tp_args; } ;
typedef  TYPE_1__ thread_priv_t ;
typedef  int /*<<< orphan*/  kthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TP_MAGIC ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	thread_priv_t *tp = (thread_priv_t *)arg;
	void (*func)(void *);
	void *args;

	FUNC0(tp->tp_magic == TP_MAGIC);
	func = tp->tp_func;
	args = tp->tp_args;
	FUNC3(tp->tp_state);
	FUNC4((kthread_t *)current, FUNC1(tp->tp_pri));
	FUNC2(tp->tp_name, tp->tp_name_size);
	FUNC2(tp, sizeof (thread_priv_t));

	if (func)
		func(args);

	return (0);
}