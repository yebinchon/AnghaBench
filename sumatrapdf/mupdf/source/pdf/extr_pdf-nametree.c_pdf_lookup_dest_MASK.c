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
 int /*<<< orphan*/  Dests ; 
 int /*<<< orphan*/  Names ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

pdf_obj *
FUNC7(fz_context *ctx, pdf_document *doc, pdf_obj *needle)
{
	pdf_obj *root = FUNC1(ctx, FUNC6(ctx, doc), FUNC0(Root));
	pdf_obj *dests = FUNC1(ctx, root, FUNC0(Dests));
	pdf_obj *names = FUNC1(ctx, root, FUNC0(Names));
	pdf_obj *dest = NULL;

	/* PDF 1.1 has destinations in a dictionary */
	if (dests)
	{
		if (FUNC3(ctx, needle))
			return FUNC1(ctx, dests, needle);
		else
			return FUNC2(ctx, dests, FUNC5(ctx, needle));
	}

	/* PDF 1.2 has destinations in a name tree */
	if (names && !dest)
	{
		pdf_obj *tree = FUNC1(ctx, names, FUNC0(Dests));
		return FUNC4(ctx, tree, needle);
	}

	return NULL;
}