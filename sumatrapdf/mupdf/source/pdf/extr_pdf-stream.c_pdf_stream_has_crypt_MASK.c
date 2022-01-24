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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Crypt ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(fz_context *ctx, pdf_obj *stm)
{
	pdf_obj *filters;
	pdf_obj *obj;
	int i;

	filters = FUNC3(ctx, stm, FUNC0(Filter), FUNC0(F));
	if (filters)
	{
		if (FUNC5(ctx, filters, FUNC0(Crypt)))
			return 1;
		if (FUNC4(ctx, filters))
		{
			int n = FUNC2(ctx, filters);
			for (i = 0; i < n; i++)
			{
				obj = FUNC1(ctx, filters, i);
				if (FUNC5(ctx, obj, FUNC0(Crypt)))
					return 1;
			}
		}
	}
	return 0;
}