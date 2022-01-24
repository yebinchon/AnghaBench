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
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pdf_obj *
FUNC8(fz_context *ctx, pdf_document *doc, pdf_obj *dest, int depth)
{
	if (depth > 10) /* Arbitrary to avoid infinite recursion */
		return NULL;

	if (FUNC5(ctx, dest) || FUNC6(ctx, dest))
	{
		dest = FUNC7(ctx, doc, dest);
		dest = FUNC8(ctx, doc, dest, depth+1);
		return dest;
	}

	else if (FUNC2(ctx, dest))
	{
		return dest;
	}

	else if (FUNC3(ctx, dest))
	{
		dest = FUNC1(ctx, dest, FUNC0(D));
		return FUNC8(ctx, doc, dest, depth+1);
	}

	else if (FUNC4(ctx, dest))
		return dest;

	return NULL;
}