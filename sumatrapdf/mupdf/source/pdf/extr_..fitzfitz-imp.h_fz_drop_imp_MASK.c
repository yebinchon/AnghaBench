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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_LOCK_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(fz_context *ctx, void *p, int *refs)
{
	if (p)
	{
		int drop;
		(void)FUNC0(refs);
		FUNC2(ctx, FZ_LOCK_ALLOC);
		if (*refs > 0)
		{
			(void)FUNC1(p);
			drop = --*refs == 0;
		}
		else
			drop = 0;
		FUNC3(ctx, FZ_LOCK_ALLOC);
		return drop;
	}
	return 0;
}