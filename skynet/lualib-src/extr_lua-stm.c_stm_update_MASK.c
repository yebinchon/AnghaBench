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
struct stm_object {int /*<<< orphan*/  lock; struct stm_copy* copy; } ;
struct stm_copy {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct stm_copy* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stm_copy*) ; 

__attribute__((used)) static void
FUNC4(struct stm_object *obj, void *msg, int32_t sz) {
	struct stm_copy *copy = FUNC2(msg, sz);
	FUNC0(&obj->lock);
	struct stm_copy *oldcopy = obj->copy;
	obj->copy = copy;
	FUNC1(&obj->lock);

	FUNC3(oldcopy);
}