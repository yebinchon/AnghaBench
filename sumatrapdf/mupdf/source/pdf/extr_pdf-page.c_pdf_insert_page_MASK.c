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
 int /*<<< orphan*/  Count ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int INT_MAX ; 
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pages ; 
 int /*<<< orphan*/  Parent ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC10(fz_context *ctx, pdf_document *doc, int at, pdf_obj *page_ref)
{
	int count = FUNC3(ctx, doc);
	pdf_obj *parent, *kids;
	int i;

	if (at < 0)
		at = count;
	if (at == INT_MAX)
		at = count;
	if (at > count)
		FUNC1(ctx, FZ_ERROR_GENERIC, "cannot insert page beyond end of page tree");

	if (count == 0)
	{
		pdf_obj *root = FUNC4(ctx, FUNC9(ctx, doc), FUNC0(Root));
		parent = FUNC4(ctx, root, FUNC0(Pages));
		if (!parent)
			FUNC1(ctx, FZ_ERROR_GENERIC, "cannot find page tree");
		kids = FUNC4(ctx, parent, FUNC0(Kids));
		if (!kids)
			FUNC1(ctx, FZ_ERROR_GENERIC, "malformed page tree");
		FUNC2(ctx, kids, page_ref, 0);
	}
	else if (at == count)
	{
		/* append after last page */
		FUNC8(ctx, doc, count - 1, &parent, &i);
		kids = FUNC4(ctx, parent, FUNC0(Kids));
		FUNC2(ctx, kids, page_ref, i + 1);
	}
	else
	{
		/* insert before found page */
		FUNC8(ctx, doc, at, &parent, &i);
		kids = FUNC4(ctx, parent, FUNC0(Kids));
		FUNC2(ctx, kids, page_ref, i);
	}

	FUNC6(ctx, page_ref, FUNC0(Parent), parent);

	/* Adjust page counts */
	while (parent)
	{
		count = FUNC5(ctx, parent, FUNC0(Count));
		FUNC7(ctx, parent, FUNC0(Count), count + 1);
		parent = FUNC4(ctx, parent, FUNC0(Parent));
	}
}