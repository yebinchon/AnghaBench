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
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int PDF_CH_FIELD_IS_MULTI_SELECT ; 
#define  PDF_WIDGET_TYPE_LISTBOX 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(fz_context *ctx, pdf_widget *tw)
{
	pdf_annot *annot = (pdf_annot *)tw;

	if (!annot) return 0;

	switch (FUNC1(ctx, annot->obj))
	{
	case PDF_WIDGET_TYPE_LISTBOX:
		return (FUNC0(ctx, annot->obj) & PDF_CH_FIELD_IS_MULTI_SELECT) != 0;
	default:
		return 0;
	}
}