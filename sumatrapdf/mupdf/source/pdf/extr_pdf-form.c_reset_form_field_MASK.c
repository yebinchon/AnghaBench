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
struct TYPE_4__ {int dirty; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  AS ; 
 int /*<<< orphan*/  DV ; 
 int /*<<< orphan*/  Kids ; 
 int /*<<< orphan*/  Off ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
#define  PDF_WIDGET_TYPE_BUTTON 131 
#define  PDF_WIDGET_TYPE_CHECKBOX 130 
#define  PDF_WIDGET_TYPE_RADIOBUTTON 129 
#define  PDF_WIDGET_TYPE_SIGNATURE 128 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
	/* Set V to DV wherever DV is present, and delete V where DV is not.
	 * FIXME: we assume for now that V has not been set unequal
	 * to DV higher in the hierarchy than "field".
	 *
	 * At the bottom of the hierarchy we may find widget annotations
	 * that aren't also fields, but DV and V will not be present in their
	 * dictionaries, and attempts to remove V will be harmless. */
	pdf_obj *dv = FUNC2(ctx, field, FUNC0(DV));
	pdf_obj *kids = FUNC2(ctx, field, FUNC0(Kids));

	if (dv)
		FUNC4(ctx, field, FUNC0(V), dv);
	else
		FUNC1(ctx, field, FUNC0(V));

	if (kids == NULL)
	{
		/* The leaves of the tree are widget annotations
		 * In some cases we need to update the appearance state;
		 * in others we need to mark the field as dirty so that
		 * the appearance stream will be regenerated. */
		switch (FUNC7(ctx, field))
		{
		case PDF_WIDGET_TYPE_CHECKBOX:
		case PDF_WIDGET_TYPE_RADIOBUTTON:
			{
				pdf_obj *leafv = FUNC3(ctx, field, FUNC0(V));
				if (!leafv)
					leafv = FUNC0(Off);
				FUNC4(ctx, field, FUNC0(AS), leafv);
			}
			FUNC6(ctx, field);
			break;

		case PDF_WIDGET_TYPE_BUTTON:
		case PDF_WIDGET_TYPE_SIGNATURE:
			/* Pushbuttons and signatures have no value to reset. */
			break;

		default:
			FUNC6(ctx, field);
			break;
		}
	}

	if (FUNC5(ctx, doc, field))
		doc->dirty = 1;
}