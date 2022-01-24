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
struct stm_object {scalar_t__ reference; int /*<<< orphan*/  lock; int /*<<< orphan*/ * copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stm_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct stm_object *obj) {
	FUNC0(obj->copy);
	FUNC1(&obj->lock);
	// writer release the stm object, so release the last copy .
	FUNC4(obj->copy);
	obj->copy = NULL;
	if (--obj->reference > 0) {
		// stm object grab by readers, reset the copy to NULL.
		FUNC2(&obj->lock);
		return;
	}
	// no one grab the stm object, no need to unlock wlock.
	FUNC3(obj);
}