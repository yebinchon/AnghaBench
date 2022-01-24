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
struct TYPE_3__ {int /*<<< orphan*/  tgoldtable; int /*<<< orphan*/  tgnewtable; } ;
typedef  TYPE_1__ Trigger ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(Trigger *trigger, void *arg)
{
	bool *found = arg;

	if (FUNC0(trigger->tgnewtable) ||
		FUNC0(trigger->tgoldtable))
	{
		*found = true;
		return false;
	}

	return true;
}