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
 int /*<<< orphan*/  AS ; 
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  Off ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC8(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *val)
{
	pdf_obj *kids = FUNC3(ctx, field, FUNC0(Kids));

	if (kids)
	{
		int i, n = FUNC2(ctx, kids);

		for (i = 0; i < n; i++)
			FUNC8(ctx, doc, FUNC1(ctx, kids, i), val);
	}
	else
	{
		pdf_obj *n = FUNC4(ctx, field, "AP/N");
		pdf_obj *oval;

		if (FUNC5(ctx, n, val))
			oval = FUNC7(ctx, val);
		else
			oval = FUNC0(Off);
		FUNC6(ctx, field, FUNC0(AS), oval);
	}
}