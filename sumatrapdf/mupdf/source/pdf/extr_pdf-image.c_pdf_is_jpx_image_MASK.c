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
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/  JPXDecode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(fz_context *ctx, pdf_obj *dict)
{
	pdf_obj *filter;
	int i, n;

	filter = FUNC3(ctx, dict, FUNC0(Filter));
	if (FUNC4(ctx, filter, FUNC0(JPXDecode)))
		return 1;
	n = FUNC2(ctx, filter);
	for (i = 0; i < n; i++)
		if (FUNC4(ctx, FUNC1(ctx, filter, i), FUNC0(JPXDecode)))
			return 1;
	return 0;
}