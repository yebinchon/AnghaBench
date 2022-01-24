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

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  out ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ showbinary ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ tight ; 

__attribute__((used)) static void FUNC6(pdf_obj *ref)
{
	pdf_obj *obj = FUNC3(ctx, ref);
	int num = FUNC4(ctx, ref);
	if (FUNC1(ctx, ref))
	{
		if (showbinary)
		{
			FUNC5(num);
		}
		else
		{
			if (tight)
			{
				FUNC0(ctx, out, "%d 0 obj ", num);
				FUNC2(ctx, out, obj, 1, 1);
				FUNC0(ctx, out, " stream\n");
			}
			else
			{
				FUNC0(ctx, out, "%d 0 obj\n", num);
				FUNC2(ctx, out, obj, 0, 1);
				FUNC0(ctx, out, "\nstream\n");
				FUNC5(num);
				FUNC0(ctx, out, "endstream\n");
				FUNC0(ctx, out, "endobj\n");
			}
		}
	}
	else
	{
		if (tight)
		{
			FUNC0(ctx, out, "%d 0 obj ", num);
			FUNC2(ctx, out, obj, 1, 1);
			FUNC0(ctx, out, "\n");
		}
		else
		{
			FUNC0(ctx, out, "%d 0 obj\n", num);
			FUNC2(ctx, out, obj, 0, 1);
			FUNC0(ctx, out, "\nendobj\n");
		}
	}
}