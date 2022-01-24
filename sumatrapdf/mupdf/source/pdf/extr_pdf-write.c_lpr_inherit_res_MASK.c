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
 int /*<<< orphan*/  ColorSpace ; 
 int /*<<< orphan*/  ExtGState ; 
 int /*<<< orphan*/  Font ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Parent ; 
 int /*<<< orphan*/  Pattern ; 
 int /*<<< orphan*/  ProcSet ; 
 int /*<<< orphan*/  Properties ; 
 int /*<<< orphan*/  Resources ; 
 int /*<<< orphan*/  Shading ; 
 int /*<<< orphan*/  XObject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, pdf_obj *node, int depth, pdf_obj *dict)
{
	while (1)
	{
		pdf_obj *o;

		node = FUNC2(ctx, node, FUNC0(Parent));
		depth--;
		if (!node || depth < 0)
			break;

		o = FUNC2(ctx, node, FUNC0(Resources));
		if (o)
		{
			FUNC1(ctx, dict, o, FUNC0(ExtGState));
			FUNC1(ctx, dict, o, FUNC0(ColorSpace));
			FUNC1(ctx, dict, o, FUNC0(Pattern));
			FUNC1(ctx, dict, o, FUNC0(Shading));
			FUNC1(ctx, dict, o, FUNC0(XObject));
			FUNC1(ctx, dict, o, FUNC0(Font));
			FUNC1(ctx, dict, o, FUNC0(ProcSet));
			FUNC1(ctx, dict, o, FUNC0(Properties));
		}
	}
}