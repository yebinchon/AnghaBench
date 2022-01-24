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
 int /*<<< orphan*/  Opt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(fz_context *ctx, pdf_widget *tw, int exportval, const char *opts[])
{
	pdf_annot *annot = (pdf_annot *)tw;
	pdf_obj *optarr;
	int i, n, m;

	optarr = FUNC4(ctx, annot->obj, FUNC0(Opt));
	n = FUNC3(ctx, optarr);

	if (opts)
	{
		for (i = 0; i < n; i++)
		{
			m = FUNC3(ctx, FUNC1(ctx, optarr, i));
			/* If it is a two element array, the second item is the one that we want if we want the listing value. */
			if (m == 2)
				if (exportval)
					opts[i] = FUNC2(ctx, FUNC1(ctx, optarr, i), 0);
				else
					opts[i] = FUNC2(ctx, FUNC1(ctx, optarr, i), 1);
			else
				opts[i] = FUNC2(ctx, optarr, i);
		}
	}
	return n;
}