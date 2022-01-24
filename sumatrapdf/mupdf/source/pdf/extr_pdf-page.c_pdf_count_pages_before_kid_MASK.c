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
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pages ; 
 int /*<<< orphan*/  Type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(fz_context *ctx, pdf_document *doc, pdf_obj *parent, int kid_num)
{
	pdf_obj *kids = FUNC4(ctx, parent, FUNC0(Kids));
	int i, total = 0, len = FUNC3(ctx, kids);
	for (i = 0; i < len; i++)
	{
		pdf_obj *kid = FUNC2(ctx, kids, i);
		if (FUNC8(ctx, kid) == kid_num)
			return total;
		if (FUNC6(ctx, FUNC4(ctx, kid, FUNC0(Type)), FUNC0(Pages)))
		{
			pdf_obj *count = FUNC4(ctx, kid, FUNC0(Count));
			int n = FUNC7(ctx, count);
			if (!FUNC5(ctx, count) || n < 0)
				FUNC1(ctx, FZ_ERROR_GENERIC, "illegal or missing count in pages tree");
			total += n;
		}
		else
			total++;
	}
	FUNC1(ctx, FZ_ERROR_GENERIC, "kid not found in parent's kids array");
}