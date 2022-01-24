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
struct stm_object {int reference; int /*<<< orphan*/  copy; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct stm_object* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct stm_object *
FUNC3(void * msg, int32_t sz) {
	struct stm_object * obj = FUNC1(sizeof(*obj));
	FUNC0(&obj->lock);
	obj->reference = 1;
	obj->copy = FUNC2(msg, sz);

	return obj;
}