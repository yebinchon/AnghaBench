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
struct TYPE_3__ {int tp_flags; int /*<<< orphan*/  tp_mutex; } ;
typedef  TYPE_1__ tpool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TP_ABANDON ; 
 int TP_DESTROY ; 
 int TP_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(tpool_t *tpool)
{
	int suspended;

	FUNC0(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

	FUNC1(&tpool->tp_mutex);
	suspended = (tpool->tp_flags & TP_SUSPEND) != 0;
	FUNC2(&tpool->tp_mutex);

	return (suspended);
}