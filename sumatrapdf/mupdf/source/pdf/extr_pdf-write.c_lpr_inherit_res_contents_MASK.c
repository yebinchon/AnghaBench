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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(fz_context *ctx, pdf_obj *res, pdf_obj *dict, pdf_obj *text)
{
	pdf_obj *o, *r;
	int i, n;

	/* If the parent node doesn't have an entry of this type, give up. */
	o = FUNC2(ctx, dict, text);
	if (!o)
		return;

	/* If the resources dict we are building doesn't have an entry of this
	 * type yet, then just copy it (ensuring it's not a reference) */
	r = FUNC2(ctx, res, text);
	if (r == NULL)
	{
		o = FUNC10(ctx, o);
		if (FUNC9(ctx, o))
			o = FUNC1(ctx, o);
		else if (FUNC8(ctx, o))
			o = FUNC0(ctx, o);
		else
			o = NULL;
		if (o)
			FUNC7(ctx, res, text, o);
		return;
	}

	/* Otherwise we need to merge o into r */
	if (FUNC9(ctx, o))
	{
		n = FUNC5(ctx, o);
		for (i = 0; i < n; i++)
		{
			pdf_obj *key = FUNC3(ctx, o, i);
			pdf_obj *val = FUNC4(ctx, o, i);

			if (FUNC2(ctx, res, key))
				continue;
			FUNC6(ctx, res, key, val);
		}
	}
}