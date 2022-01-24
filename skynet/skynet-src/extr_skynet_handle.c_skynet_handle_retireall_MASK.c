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
typedef  scalar_t__ uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int slot_size; int /*<<< orphan*/  lock; struct skynet_context** slot; } ;

/* Variables and functions */
 struct handle_storage* H ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct skynet_context*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

void 
FUNC4() {
	struct handle_storage *s = H;
	for (;;) {
		int n=0;
		int i;
		for (i=0;i<s->slot_size;i++) {
			FUNC0(&s->lock);
			struct skynet_context * ctx = s->slot[i];
			uint32_t handle = 0;
			if (ctx)
				handle = FUNC2(ctx);
			FUNC1(&s->lock);
			if (handle != 0) {
				if (FUNC3(handle)) {
					++n;
				}
			}
		}
		if (n==0)
			return;
	}
}