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
struct handle_storage {int slot_size; int harbor; int handle_index; int name_cap; void* name; scalar_t__ name_count; int /*<<< orphan*/  lock; void* slot; } ;
struct handle_name {int dummy; } ;

/* Variables and functions */
 int DEFAULT_SLOT_SIZE ; 
 struct handle_storage* H ; 
 int HANDLE_REMOTE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 

void 
FUNC4(int harbor) {
	FUNC0(H==NULL);
	struct handle_storage * s = FUNC3(sizeof(*H));
	s->slot_size = DEFAULT_SLOT_SIZE;
	s->slot = FUNC3(s->slot_size * sizeof(struct skynet_context *));
	FUNC1(s->slot, 0, s->slot_size * sizeof(struct skynet_context *));

	FUNC2(&s->lock);
	// reserve 0 for system
	s->harbor = (uint32_t) (harbor & 0xff) << HANDLE_REMOTE_SHIFT;
	s->handle_index = 1;
	s->name_cap = 2;
	s->name_count = 0;
	s->name = FUNC3(s->name_cap * sizeof(struct handle_name));

	H = s;

	// Don't need to free H
}