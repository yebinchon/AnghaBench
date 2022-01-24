#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_7__ {int /*<<< orphan*/  obj; TYPE_1__* page; } ;
typedef  TYPE_2__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  enum pdf_line_ending { ____Placeholder_pdf_line_ending } pdf_line_ending ;
struct TYPE_6__ {int /*<<< orphan*/ * doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  line_ending_subtypes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC7(fz_context *ctx, pdf_annot *annot,
		enum pdf_line_ending start_style,
		enum pdf_line_ending end_style)
{
	pdf_document *doc = annot->page->doc;
	pdf_obj *style;
	FUNC1(ctx, annot, FUNC0(LE), line_ending_subtypes);
	style = FUNC6(ctx, doc, 2);
	FUNC3(ctx, annot->obj, FUNC0(LE), style);
	FUNC2(ctx, style, 0, FUNC5(ctx, start_style));
	FUNC2(ctx, style, 1, FUNC5(ctx, end_style));
	FUNC4(ctx, annot);
}