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
 int /*<<< orphan*/  AA ; 
 int /*<<< orphan*/  F ; 
 int /*<<< orphan*/  JS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PDF_WIDGET_TX_FORMAT_DATE ; 
 int PDF_WIDGET_TX_FORMAT_NONE ; 
 int PDF_WIDGET_TX_FORMAT_NUMBER ; 
 int PDF_WIDGET_TX_FORMAT_SPECIAL ; 
 int PDF_WIDGET_TX_FORMAT_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(fz_context *ctx, pdf_widget *tw)
{
	pdf_annot *annot = (pdf_annot *)tw;
	int type = PDF_WIDGET_TX_FORMAT_NONE;
	pdf_obj *js = FUNC2(ctx, annot->obj, FUNC0(AA), FUNC0(F), FUNC0(JS), NULL);
	if (js)
	{
		char *code = FUNC3(ctx, js);
		if (FUNC4(code, "AFNumber_Format"))
			type = PDF_WIDGET_TX_FORMAT_NUMBER;
		else if (FUNC4(code, "AFSpecial_Format"))
			type = PDF_WIDGET_TX_FORMAT_SPECIAL;
		else if (FUNC4(code, "AFDate_FormatEx"))
			type = PDF_WIDGET_TX_FORMAT_DATE;
		else if (FUNC4(code, "AFTime_FormatEx"))
			type = PDF_WIDGET_TX_FORMAT_TIME;
		FUNC1(ctx, code);
	}

	return type;
}