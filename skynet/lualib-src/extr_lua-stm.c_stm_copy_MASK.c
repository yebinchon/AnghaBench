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
struct stm_copy {int /*<<< orphan*/  reference; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct stm_copy *
FUNC4(struct stm_object *obj) {
	FUNC2(&obj->lock);
	struct stm_copy * ret = obj->copy;
	if (ret) {
		int ref = FUNC0(&ret->reference);
		FUNC1(ref > 0);
	}
	FUNC3(&obj->lock);
	
	return ret;
}