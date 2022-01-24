#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
struct TYPE_9__ {int size; } ;
typedef  TYPE_1__ fz_store ;
struct TYPE_10__ {TYPE_1__* store; } ;
typedef  TYPE_2__ fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_LOCK_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t) ; 

int
FUNC5(fz_context *ctx, unsigned int percent)
{
	int success;
	fz_store *store;
	size_t new_size;

	if (percent >= 100)
		return 1;

	store = ctx->store;
	if (store == NULL)
		return 0;

#ifdef DEBUG_SCAVENGING
	fz_write_printf(ctx, fz_stdout(ctx), "fz_shrink_store: %zu\n", store->size/(1024*1024));
#endif
	FUNC0(ctx, FZ_LOCK_ALLOC);

	new_size = (size_t)(((uint64_t)store->size * percent) / 100);
	if (store->size > new_size)
		FUNC4(ctx, store->size - new_size);

	success = (store->size <= new_size) ? 1 : 0;
	FUNC2(ctx, FZ_LOCK_ALLOC);
#ifdef DEBUG_SCAVENGING
	fz_write_printf(ctx, fz_stdout(ctx), "fz_shrink_store after: %zu\n", store->size/(1024*1024));
#endif

	return success;
}