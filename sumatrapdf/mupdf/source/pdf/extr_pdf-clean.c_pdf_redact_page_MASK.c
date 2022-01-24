#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int no_black_boxes; } ;
typedef  TYPE_1__ pdf_redact_options ;
typedef  int /*<<< orphan*/  pdf_page ;
struct TYPE_12__ {int redacted; } ;
typedef  TYPE_2__ pdf_document ;
struct TYPE_13__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_3__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Redact ; 
 int /*<<< orphan*/  Subtype ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * pdf_redact_end_page ; 
 int /*<<< orphan*/  pdf_redact_text_filter ; 

int
FUNC6(fz_context *ctx, pdf_document *doc, pdf_page *page, pdf_redact_options *opts)
{
	pdf_annot *annot;
	int has_redactions = 0;
	int no_black_boxes = 0;

	if (opts)
	{
		no_black_boxes = opts->no_black_boxes;
	}

	for (annot = FUNC4(ctx, page); annot; annot = FUNC5(ctx, annot))
		if (FUNC2(ctx, annot->obj, FUNC0(Subtype)) == FUNC0(Redact))
			has_redactions = 1;

	if (has_redactions)
	{
		FUNC3(ctx, doc, page, NULL,
			no_black_boxes ? NULL : pdf_redact_end_page,
			pdf_redact_text_filter,
			NULL,
			page,
			1, 1);
	}

	annot = FUNC4(ctx, page);
	while (annot)
	{
		if (FUNC2(ctx, annot->obj, FUNC0(Subtype)) == FUNC0(Redact))
		{
			FUNC1(ctx, page, annot);
			annot = FUNC4(ctx, page);
		}
		else
		{
			annot = FUNC5(ctx, annot);
		}
	}

	doc->redacted = has_redactions;

	return has_redactions;
}