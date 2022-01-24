#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {int recalculate; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  AS ; 
 int /*<<< orphan*/  Off ; 
 int PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF ; 
 int PDF_BTN_FIELD_IS_RADIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
	int ff = FUNC5(ctx, field);
	int is_radio = (ff & PDF_BTN_FIELD_IS_RADIO);
	int is_no_toggle_to_off = (ff & PDF_BTN_FIELD_IS_NO_TOGGLE_TO_OFF);
	pdf_obj *grp, *as, *val;

	grp = FUNC1(ctx, field);
	if (!grp)
		grp = field;

	/* TODO: check V value as well as or instead of AS? */
	as = FUNC3(ctx, field, FUNC0(AS));
	if (as && as != FUNC0(Off))
	{
		if (is_radio && is_no_toggle_to_off)
			return;
		val = FUNC0(Off);
	}
	else
	{
		val = FUNC2(ctx, field);
	}

	FUNC4(ctx, grp, FUNC0(V), val);
	FUNC6(ctx, doc, grp, val);
	doc->recalculate = 1;
}