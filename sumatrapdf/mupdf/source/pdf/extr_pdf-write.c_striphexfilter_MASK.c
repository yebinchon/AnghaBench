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
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  ASCIIHexDecode ; 
 int /*<<< orphan*/  DecodeParms ; 
 int /*<<< orphan*/  Filter ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(fz_context *ctx, pdf_document *doc, pdf_obj *dict)
{
	pdf_obj *f, *dp;
	int is_hex = 0;

	f = FUNC5(ctx, dict, FUNC0(Filter));
	dp = FUNC5(ctx, dict, FUNC0(DecodeParms));

	if (FUNC7(ctx, f))
	{
		/* Remove ASCIIHexDecode from head of filter list */
		if (FUNC2(ctx, f, 0) == FUNC0(ASCIIHexDecode))
		{
			is_hex = 1;
			FUNC1(ctx, f, 0);
			if (FUNC7(ctx, dp))
				FUNC1(ctx, dp, 0);
		}
		/* Unpack array if only one filter remains */
		if (FUNC3(ctx, f) == 1)
		{
			f = FUNC2(ctx, f, 0);
			FUNC6(ctx, dict, FUNC0(Filter), f);
			if (dp)
			{
				dp = FUNC2(ctx, dp, 0);
				FUNC6(ctx, dict, FUNC0(DecodeParms), dp);
			}
		}
		/* Remove array if no filters remain */
		else if (FUNC3(ctx, f) == 0)
		{
			FUNC4(ctx, dict, FUNC0(Filter));
			FUNC4(ctx, dict, FUNC0(DecodeParms));
		}
	}
	else if (f == FUNC0(ASCIIHexDecode))
	{
		is_hex = 1;
		FUNC4(ctx, dict, FUNC0(Filter));
		FUNC4(ctx, dict, FUNC0(DecodeParms));
	}

	return is_hex;
}