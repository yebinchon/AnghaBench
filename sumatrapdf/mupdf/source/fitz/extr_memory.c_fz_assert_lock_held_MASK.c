#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lock; } ;
struct TYPE_6__ {TYPE_1__ locks; } ;
typedef  TYPE_2__ fz_context ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ fz_lock_default ; 
 scalar_t__** fz_locks_debug ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(fz_context *ctx, int lock)
{
	int idx;

	if (ctx->locks.lock != fz_lock_default)
		return;

	idx = FUNC0(ctx);
	if (idx < 0)
		return;

	if (fz_locks_debug[idx][lock] == 0)
		FUNC1(stderr, "Lock %d not held when expected\n", lock);
}