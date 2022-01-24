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
typedef  int /*<<< orphan*/  fz_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int*,int*,int) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, fz_document *doc, const char *range)
{
	int page, spage, epage, pagecount;

	pagecount = FUNC1(ctx, doc);

	while ((range = FUNC2(ctx, range, &spage, &epage, pagecount)))
	{
		if (spage < epage)
			for (page = spage; page <= epage; page++)
				FUNC0(ctx, doc, page);
		else
			for (page = spage; page >= epage; page--)
				FUNC0(ctx, doc, page);
	}
}