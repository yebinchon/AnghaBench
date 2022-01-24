#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  user; void* (* realloc ) (int /*<<< orphan*/ ,void*,size_t) ;} ;
struct TYPE_8__ {TYPE_1__ alloc; } ;
typedef  TYPE_2__ fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_LOCK_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static void *
FUNC4(fz_context *ctx, void *p, size_t size)
{
	void *q;
	int phase = 0;

	FUNC0(ctx, FZ_LOCK_ALLOC);
	do {
		q = ctx->alloc.realloc(ctx->alloc.user, p, size);
		if (q != NULL)
		{
			FUNC2(ctx, FZ_LOCK_ALLOC);
			return q;
		}
	} while (FUNC1(ctx, size, &phase));
	FUNC2(ctx, FZ_LOCK_ALLOC);

	return NULL;
}