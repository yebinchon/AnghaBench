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
 int /*<<< orphan*/  BlackPoint ; 
 int /*<<< orphan*/  FZ_ERROR_SYNTAX ; 
 int /*<<< orphan*/  Gamma ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WhitePoint ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_obj *dict, float *wp, float *bp, float *gamma)
{
	pdf_obj *obj;
	int i;

	obj = FUNC4(ctx, dict, FUNC0(WhitePoint));
	if (FUNC3(ctx, obj) != 3)
		FUNC1(ctx, FZ_ERROR_SYNTAX, "WhitePoint must be a 3-element array");

	for (i = 0; i < 3; i++)
	{
		wp[i] = FUNC2(ctx, obj, i);
		if (wp[i] < 0)
			FUNC1(ctx, FZ_ERROR_SYNTAX, "WhitePoint numbers must be positive");
	}
	if (wp[1] != 1)
		FUNC1(ctx, FZ_ERROR_SYNTAX, "WhitePoint Yw must be 1.0");

	obj = FUNC4(ctx, dict, FUNC0(BlackPoint));
	if (FUNC3(ctx, obj) == 3)
	{
		for (i = 0; i < 3; i++)
		{
			bp[i] = FUNC2(ctx, obj, i);
			if (bp[i] < 0)
				FUNC1(ctx, FZ_ERROR_SYNTAX, "BlackPoint numbers must be positive");
		}
	}

	obj = FUNC4(ctx, dict, FUNC0(Gamma));
	if (FUNC5(ctx, obj))
	{
		gamma[0] = FUNC6(ctx, obj);
		gamma[1] = gamma[2];
		if (gamma[0] <= 0)
			FUNC1(ctx, FZ_ERROR_SYNTAX, "Gamma must be greater than zero");
	}
	else if (FUNC3(ctx, obj) == 3)
	{
		for (i = 0; i < 3; i++)
		{
			gamma[i] = FUNC2(ctx, obj, i);
			if (gamma[i] <= 0)
				FUNC1(ctx, FZ_ERROR_SYNTAX, "Gamma must be greater than zero");
		}
	}
}