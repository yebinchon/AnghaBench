#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {scalar_t__ user; } ;
typedef  TYPE_1__* FT_Memory ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,long) ; 

__attribute__((used)) static void *FUNC3(FT_Memory memory, long cur_size, long new_size, void *block)
{
	fz_context *ctx = (fz_context *) memory->user;
	void *newblock = NULL;
	if (new_size == 0)
	{
		FUNC1(ctx, block);
		return newblock;
	}
	if (block == NULL)
		return FUNC0(memory, new_size);
	return FUNC2(ctx, block, new_size);
}