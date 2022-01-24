#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_6__ {int recalculate; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  PDF_WIDGET_TYPE_CHECKBOX 132 
#define  PDF_WIDGET_TYPE_COMBOBOX 131 
#define  PDF_WIDGET_TYPE_LISTBOX 130 
#define  PDF_WIDGET_TYPE_RADIOBUTTON 129 
#define  PDF_WIDGET_TYPE_TEXT 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 

int FUNC4(fz_context *ctx, pdf_document *doc, pdf_obj *field, const char *text, int ignore_trigger_events)
{
	int accepted = 0;

	switch (FUNC0(ctx, field))
	{
	case PDF_WIDGET_TYPE_TEXT:
	case PDF_WIDGET_TYPE_COMBOBOX:
	case PDF_WIDGET_TYPE_LISTBOX:
		accepted = FUNC2(ctx, doc, field, text, ignore_trigger_events);
		break;

	case PDF_WIDGET_TYPE_CHECKBOX:
	case PDF_WIDGET_TYPE_RADIOBUTTON:
		accepted = FUNC1(ctx, doc, field, text);
		break;

	default:
		FUNC3(ctx, doc, field, text);
		accepted = 1;
		break;
	}

	if (!ignore_trigger_events)
		doc->recalculate = 1;

	return accepted;
}