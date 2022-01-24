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
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  Dest ; 
 int /*<<< orphan*/  Next ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Prev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(fz_context *ctx, pdf_document *doc, pdf_obj *outlines, int page_count, int *page_object_nums, pdf_obj *names_list, pdf_obj **pfirst, pdf_obj **plast)
{
	pdf_obj *prev = NULL;
	pdf_obj *first = NULL;
	pdf_obj *current;
	int count = 0;

	for (current = outlines; current != NULL; )
	{
		int nc;

		/* Strip any children to start with. This takes care of
		 * First/Last/Count for us. */
		nc = FUNC5(ctx, doc, current, page_count, page_object_nums, names_list);

		if (!FUNC1(ctx, current, page_count, page_object_nums, names_list))
		{
			if (nc == 0)
			{
				/* Outline with invalid dest and no children. Drop it by
				 * pulling the next one in here. */
				pdf_obj *next = FUNC3(ctx, current, FUNC0(Next));
				if (next == NULL)
				{
					/* There is no next one to pull in */
					if (prev != NULL)
						FUNC2(ctx, prev, FUNC0(Next));
				}
				else if (prev != NULL)
				{
					FUNC4(ctx, prev, FUNC0(Next), next);
					FUNC4(ctx, next, FUNC0(Prev), prev);
				}
				else
				{
					FUNC2(ctx, next, FUNC0(Prev));
				}
				current = next;
			}
			else
			{
				/* Outline with invalid dest, but children. Just drop the dest. */
				FUNC2(ctx, current, FUNC0(Dest));
				FUNC2(ctx, current, FUNC0(A));
				current = FUNC3(ctx, current, FUNC0(Next));
			}
		}
		else
		{
			/* Keep this one */
			if (first == NULL)
				first = current;
			prev = current;
			current = FUNC3(ctx, current, FUNC0(Next));
			count++;
		}
	}

	*pfirst = first;
	*plast = prev;

	return count;
}