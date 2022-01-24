#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; int load; scalar_t__ lock; TYPE_2__* ents; } ;
typedef  TYPE_1__ fz_hash_table ;
struct TYPE_9__ {scalar_t__ val; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ fz_hash_entry ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ FZ_LOCK_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, fz_hash_table *table, int newsize)
{
	fz_hash_entry *oldents = table->ents;
	fz_hash_entry *newents;
	int oldsize = table->size;
	int oldload = table->load;
	int i;

	if (newsize < oldload * 8 / 10)
	{
		FUNC6(ctx, "assert: resize hash too small");
		return;
	}

	if (table->lock == FZ_LOCK_ALLOC)
		FUNC5(ctx, table->lock);
	newents = FUNC3(ctx, newsize * sizeof (fz_hash_entry));
	if (table->lock == FZ_LOCK_ALLOC)
		FUNC2(ctx, table->lock);
	if (table->lock >= 0)
	{
		if (table->size >= newsize)
		{
			/* Someone else fixed it before we could lock! */
			if (table->lock == FZ_LOCK_ALLOC)
				FUNC5(ctx, table->lock);
			FUNC1(ctx, newents);
			if (table->lock == FZ_LOCK_ALLOC)
				FUNC2(ctx, table->lock);
			return;
		}
	}
	if (newents == NULL)
		FUNC4(ctx, FZ_ERROR_GENERIC, "hash table resize failed; out of memory (%d entries)", newsize);
	table->ents = newents;
	FUNC7(table->ents, 0, sizeof(fz_hash_entry) * newsize);
	table->size = newsize;
	table->load = 0;

	for (i = 0; i < oldsize; i++)
	{
		if (oldents[i].val)
		{
			FUNC0(ctx, table, oldents[i].key, oldents[i].val);
		}
	}

	if (table->lock == FZ_LOCK_ALLOC)
		FUNC5(ctx, table->lock);
	FUNC1(ctx, oldents);
	if (table->lock == FZ_LOCK_ALLOC)
		FUNC2(ctx, table->lock);
}