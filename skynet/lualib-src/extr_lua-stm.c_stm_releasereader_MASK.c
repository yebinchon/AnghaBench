#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stm_object {int /*<<< orphan*/  lock; int /*<<< orphan*/ * copy; int /*<<< orphan*/  reference; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stm_object*) ; 

__attribute__((used)) static void
FUNC5(struct stm_object *obj) {
	FUNC2(&obj->lock);
	if (FUNC0(&obj->reference) == 0) {
		// last reader, no writer. so no need to unlock
		FUNC1(obj->copy == NULL);
		FUNC4(obj);
		return;
	}
	FUNC3(&obj->lock);
}