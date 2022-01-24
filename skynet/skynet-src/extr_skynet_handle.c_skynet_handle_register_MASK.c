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
typedef  int uint32_t ;
struct skynet_context {int dummy; } ;
struct handle_storage {int handle_index; int slot_size; int harbor; struct skynet_context** slot; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct handle_storage* H ; 
 int HANDLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct skynet_context**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct skynet_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct skynet_context**) ; 
 struct skynet_context** FUNC6 (int) ; 

uint32_t
FUNC7(struct skynet_context *ctx) {
	struct handle_storage *s = H;

	FUNC2(&s->lock);
	
	for (;;) {
		int i;
		uint32_t handle = s->handle_index;
		for (i=0;i<s->slot_size;i++,handle++) {
			if (handle > HANDLE_MASK) {
				// 0 is reserved
				handle = 1;
			}
			int hash = handle & (s->slot_size-1);
			if (s->slot[hash] == NULL) {
				s->slot[hash] = ctx;
				s->handle_index = handle + 1;

				FUNC3(&s->lock);

				handle |= s->harbor;
				return handle;
			}
		}
		FUNC0((s->slot_size*2 - 1) <= HANDLE_MASK);
		struct skynet_context ** new_slot = FUNC6(s->slot_size * 2 * sizeof(struct skynet_context *));
		FUNC1(new_slot, 0, s->slot_size * 2 * sizeof(struct skynet_context *));
		for (i=0;i<s->slot_size;i++) {
			int hash = FUNC4(s->slot[i]) & (s->slot_size * 2 - 1);
			FUNC0(new_slot[hash] == NULL);
			new_slot[hash] = s->slot[i];
		}
		FUNC5(s->slot);
		s->slot = new_slot;
		s->slot_size *= 2;
	}
}