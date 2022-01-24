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
 int /*<<< orphan*/  First ; 
 int /*<<< orphan*/  Last ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC7(fz_context *ctx, pdf_document *doc, pdf_obj *outlines, int page_count, int *page_object_nums, pdf_obj *names_list)
{
	int nc;
	pdf_obj *first;
	pdf_obj *last;

	if (outlines == NULL)
		return 0;

	first = FUNC2(ctx, outlines, FUNC0(First));
	if (first == NULL)
		nc = 0;
	else
		nc = FUNC6(ctx, doc, first, page_count, page_object_nums, names_list, &first, &last);

	if (nc == 0)
	{
		FUNC1(ctx, outlines, FUNC0(First));
		FUNC1(ctx, outlines, FUNC0(Last));
		FUNC1(ctx, outlines, FUNC0(Count));
	}
	else
	{
		int old_count = FUNC3(ctx, outlines, FUNC0(Count));
		FUNC4(ctx, outlines, FUNC0(First), first);
		FUNC4(ctx, outlines, FUNC0(Last), last);
		FUNC5(ctx, outlines, FUNC0(Count), old_count > 0 ? nc : -nc);
	}

	return nc;
}