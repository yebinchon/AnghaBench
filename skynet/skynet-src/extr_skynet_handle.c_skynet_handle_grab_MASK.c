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
struct handle_storage {int slot_size; int /*<<< orphan*/  lock; struct skynet_context** slot; } ;

/* Variables and functions */
 struct handle_storage* H ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*) ; 
 int FUNC3 (struct skynet_context*) ; 

struct skynet_context * 
FUNC4(uint32_t handle) {
	struct handle_storage *s = H;
	struct skynet_context * result = NULL;

	FUNC0(&s->lock);

	uint32_t hash = handle & (s->slot_size-1);
	struct skynet_context * ctx = s->slot[hash];
	if (ctx && FUNC3(ctx) == handle) {
		result = ctx;
		FUNC2(result);
	}

	FUNC1(&s->lock);

	return result;
}