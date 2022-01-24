#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int len; int current; TYPE_1__* ocgs; int /*<<< orphan*/  intent; } ;
typedef  TYPE_2__ pdf_ocg_descriptor ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_10__ {TYPE_2__* ocg; } ;
typedef  TYPE_3__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int state; int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  BaseState ; 
 int /*<<< orphan*/  Configs ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  OCProperties ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Root ; 
 int /*<<< orphan*/  Unchanged ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void
FUNC12(fz_context *ctx, pdf_document *doc, int config)
{
	int i, j, len, len2;
	pdf_ocg_descriptor *desc = doc->ocg;
	pdf_obj *obj, *cobj;
	pdf_obj *name;

	obj = FUNC6(ctx, FUNC6(ctx, FUNC11(ctx, doc), FUNC0(Root)), FUNC0(OCProperties));
	if (!obj)
	{
		if (config == 0)
			return;
		else
			FUNC2(ctx, FZ_ERROR_GENERIC, "Unknown Layer config (None known!)");
	}

	cobj = FUNC4(ctx, FUNC6(ctx, obj, FUNC0(Configs)), config);
	if (!cobj)
	{
		if (config != 0)
			FUNC2(ctx, FZ_ERROR_GENERIC, "Illegal Layer config");
		cobj = FUNC6(ctx, obj, FUNC0(D));
		if (!cobj)
			FUNC2(ctx, FZ_ERROR_GENERIC, "No default Layer config");
	}

	FUNC7(ctx, desc->intent);
	desc->intent = FUNC8(ctx, FUNC6(ctx, cobj, FUNC0(Intent)));

	len = desc->len;
	name = FUNC6(ctx, cobj, FUNC0(BaseState));
	if (FUNC9(ctx, name, FUNC0(Unchanged)))
	{
		/* Do nothing */
	}
	else if (FUNC9(ctx, name, FUNC0(OFF)))
	{
		for (i = 0; i < len; i++)
		{
			desc->ocgs[i].state = 0;
		}
	}
	else /* Default to ON */
	{
		for (i = 0; i < len; i++)
		{
			desc->ocgs[i].state = 1;
		}
	}

	obj = FUNC6(ctx, cobj, FUNC0(ON));
	len2 = FUNC5(ctx, obj);
	for (i = 0; i < len2; i++)
	{
		pdf_obj *o = FUNC4(ctx, obj, i);
		for (j=0; j < len; j++)
		{
			if (!FUNC10(ctx, desc->ocgs[j].obj, o))
			{
				desc->ocgs[j].state = 1;
				break;
			}
		}
	}

	obj = FUNC6(ctx, cobj, FUNC0(OFF));
	len2 = FUNC5(ctx, obj);
	for (i = 0; i < len2; i++)
	{
		pdf_obj *o = FUNC4(ctx, obj, i);
		for (j=0; j < len; j++)
		{
			if (!FUNC10(ctx, desc->ocgs[j].obj, o))
			{
				desc->ocgs[j].state = 0;
				break;
			}
		}
	}

	desc->current = config;

	FUNC1(ctx, desc);
	FUNC3(ctx, desc, obj, cobj);
}