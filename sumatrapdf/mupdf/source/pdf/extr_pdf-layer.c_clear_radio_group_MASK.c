#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ pdf_ocg_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_8__ {TYPE_1__* ocg; } ;
typedef  TYPE_3__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_6__ {int len; TYPE_2__* ocgs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_document *doc, pdf_obj *ocg)
{
	pdf_obj *rbgroups = FUNC3(ctx, FUNC5(ctx, doc), "Root/OCProperties/RBGroups");
	int len, i;

	len = FUNC2(ctx, rbgroups);
	for (i = 0; i < len; i++)
	{
		pdf_obj *group = FUNC1(ctx, rbgroups, i);

		if (FUNC0(ctx, ocg, group))
		{
			int len2 = FUNC2(ctx, group);
			int j;

			for (j = 0; j < len2; j++)
			{
				pdf_obj *g = FUNC1(ctx, group, j);
				int k;
				for (k = 0; k < doc->ocg->len; k++)
				{
					pdf_ocg_entry *s = &doc->ocg->ocgs[k];

					if (!FUNC4(ctx, s->obj, g))
						s->state = 0;
				}
			}
		}
	}
}