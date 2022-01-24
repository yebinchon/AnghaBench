#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  obj; scalar_t__ state; } ;
typedef  TYPE_2__ pdf_ocg_entry ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_9__ {TYPE_1__* ocg; } ;
typedef  TYPE_3__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {int len; TYPE_2__* ocgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS ; 
 int /*<<< orphan*/  BaseState ; 
 int /*<<< orphan*/  Configs ; 
 int /*<<< orphan*/  Creator ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  Locked ; 
 int /*<<< orphan*/  Name ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  Order ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBGroups ; 
 int /*<<< orphan*/  View ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void
FUNC10(fz_context *ctx, pdf_document *doc)
{
	pdf_obj *ocprops, *d, *order, *on, *configs, *rbgroups;
	int k;

	if (doc == NULL || doc->ocg == NULL)
		return;

	ocprops = FUNC6(ctx, FUNC9(ctx, doc), "Root/OCProperties");
	if (!ocprops)
		return;

	/* All files with OCGs are required to have a D entry */
	d = FUNC5(ctx, ocprops, FUNC0(D));
	if (d == NULL)
		return;

	FUNC7(ctx, d, FUNC0(BaseState), FUNC0(OFF));

	/* We are about to delete RBGroups and Order, from D. These are
	 * both the underlying defaults for other configs, so copy the
	 * current values out to any config that doesn't have one
	 * already. */
	order = FUNC5(ctx, d, FUNC0(Order));
	rbgroups = FUNC5(ctx, d, FUNC0(RBGroups));
	configs = FUNC5(ctx, ocprops, FUNC0(Configs));
	if (configs)
	{
		int len = FUNC2(ctx, configs);
		for (k=0; k < len; k++)
		{
			pdf_obj *config = FUNC1(ctx, configs, k);

			if (order && !FUNC5(ctx, config, FUNC0(Order)))
				FUNC7(ctx, config, FUNC0(Order), order);
			if (rbgroups && !FUNC5(ctx, config, FUNC0(RBGroups)))
				FUNC7(ctx, config, FUNC0(RBGroups), rbgroups);
		}
	}

	/* Offer all the layers in the UI */
	order = FUNC8(ctx, doc, 4);
	on = FUNC8(ctx, doc, 4);
	for (k = 0; k < doc->ocg->len; k++)
	{
		pdf_ocg_entry *s = &doc->ocg->ocgs[k];

		FUNC3(ctx, order, s->obj);
		if (s->state)
			FUNC3(ctx, on, s->obj);
	}
	FUNC7(ctx, d, FUNC0(Order), order);
	FUNC7(ctx, d, FUNC0(ON), on);
	FUNC4(ctx, d, FUNC0(OFF));
	FUNC4(ctx, d, FUNC0(AS));
	FUNC7(ctx, d, FUNC0(Intent), FUNC0(View));
	FUNC4(ctx, d, FUNC0(Name));
	FUNC4(ctx, d, FUNC0(Creator));
	FUNC4(ctx, d, FUNC0(RBGroups));
	FUNC4(ctx, d, FUNC0(Locked));

	FUNC4(ctx, ocprops, FUNC0(Configs));
}