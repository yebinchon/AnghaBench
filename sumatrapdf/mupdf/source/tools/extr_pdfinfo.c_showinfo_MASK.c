#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  doc; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ globals ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, globals *glo, char *filename, int show, const char *pagelist)
{
	int page, spage, epage;
	int allpages;
	int pagecount;
	fz_output *out = glo->out;

	if (!glo->doc)
		FUNC4();

	allpages = !FUNC7(pagelist, "1-N");

	pagecount = FUNC5(ctx, glo->doc);

	while ((pagelist = FUNC1(ctx, pagelist, &spage, &epage, pagecount)))
	{
		if (allpages)
			FUNC2(ctx, out, "Retrieving info from pages %d-%d...\n", spage, epage);
		for (page = spage; page <= epage; page++)
		{
			FUNC3(ctx, glo, page, show);
			if (!allpages)
			{
				FUNC2(ctx, out, "Page %d:\n", page);
				FUNC6(ctx, glo, filename, show, page);
				FUNC2(ctx, out, "\n");
				FUNC0(ctx, glo);
			}
		}
	}

	if (allpages)
		FUNC6(ctx, glo, filename, show, -1);
}