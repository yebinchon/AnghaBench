#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_widget ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(fz_context *ctx, pdf_widget *tw, const char *opts[])
{
	pdf_annot *annot = (pdf_annot *)tw;
	pdf_obj *optarr;
	int i, n;

	if (!annot)
		return 0;

	optarr = FUNC3(ctx, annot->obj, FUNC0(V));

	if (FUNC5(ctx, optarr))
	{
		if (opts)
			opts[0] = FUNC6(ctx, optarr);
		return 1;
	}
	else
	{
		n = FUNC2(ctx, optarr);
		if (opts)
		{
			for (i = 0; i < n; i++)
			{
				pdf_obj *elem = FUNC1(ctx, optarr, i);
				if (FUNC4(ctx, elem))
					elem = FUNC1(ctx, elem, 1);
				opts[i] = FUNC6(ctx, elem);
			}
		}
		return n;
	}
}