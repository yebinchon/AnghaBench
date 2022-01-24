#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_1__ pdf_widget ;
struct TYPE_10__ {TYPE_1__* widgets; } ;
typedef  TYPE_2__ pdf_page ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
struct TYPE_11__ {int progress_max; int /*<<< orphan*/  progress; scalar_t__ abort; } ;
typedef  TYPE_3__ fz_cookie ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, pdf_document *doc, pdf_page *page, fz_device *dev, fz_matrix ctm, const char *usage, fz_cookie *cookie)
{
	pdf_widget *widget;

	if (cookie && cookie->progress_max != -1)
	{
		int count = 1;
		for (widget = page->widgets; widget; widget = widget->next)
			count++;
		cookie->progress_max += count;
	}

	for (widget = page->widgets; widget; widget = widget->next)
	{
		/* Check the cookie for aborting */
		if (cookie)
		{
			if (cookie->abort)
				break;
			cookie->progress++;
		}

		FUNC0(ctx, doc, page, widget, dev, ctm, usage, cookie);
	}
}