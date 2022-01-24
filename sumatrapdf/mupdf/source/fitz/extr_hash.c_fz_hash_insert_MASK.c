#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int load; int size; } ;
typedef  TYPE_1__ fz_hash_table ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,void const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

void *
FUNC2(fz_context *ctx, fz_hash_table *table, const void *key, void *val)
{
	if (table->load > table->size * 8 / 10)
		FUNC1(ctx, table, table->size * 2);
	return FUNC0(ctx, table, key, val);
}