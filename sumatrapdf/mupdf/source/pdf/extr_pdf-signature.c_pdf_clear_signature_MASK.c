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
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  F ; 
 int PDF_ANNOT_IS_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(fz_context *ctx, pdf_document *doc, pdf_widget *widget)
{
	int flags;

	flags = FUNC2(ctx, ((pdf_annot *) widget)->obj, FUNC0(F));
	flags &= ~PDF_ANNOT_IS_LOCKED;
	if (flags)
		FUNC3(ctx, ((pdf_annot *) widget)->obj, FUNC0(F), flags);
	else
		FUNC1(ctx, ((pdf_annot *) widget)->obj, FUNC0(F));

	FUNC1(ctx, ((pdf_annot *) widget)->obj, FUNC0(V));

	FUNC4(ctx, widget, NULL, NULL, NULL);
}