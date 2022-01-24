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
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  Dest ; 
 int /*<<< orphan*/  GoTo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(fz_context *ctx, pdf_obj *o, int page_count, int *page_object_nums, pdf_obj *names_list)
{
	pdf_obj *p;

	p = FUNC3(ctx, o, FUNC0(A));
	if (FUNC5(ctx, FUNC3(ctx, p, FUNC0(S)), FUNC0(GoTo)) &&
		!FUNC6(ctx, FUNC3(ctx, p, FUNC0(D)), names_list))
		return 0;

	p = FUNC3(ctx, o, FUNC0(Dest));
	if (p == NULL)
	{}
	else if (FUNC4(ctx, p))
		return FUNC6(ctx, p, names_list);
	else if (!FUNC1(ctx, FUNC2(ctx, p, 0), page_object_nums, page_count))
		return 0;

	return 1;
}