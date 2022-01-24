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
struct TYPE_6__ {struct TYPE_6__* items; int /*<<< orphan*/  font; struct TYPE_6__* next; struct TYPE_6__* head; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ fz_text_span ;
typedef  TYPE_1__ fz_text ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC3(fz_context *ctx, const fz_text *textc)
{
	fz_text *text = (fz_text *)textc; /* Explicit cast away of const */

	if (FUNC1(ctx, text, &text->refs))
	{
		fz_text_span *span = text->head;
		while (span)
		{
			fz_text_span *next = span->next;
			FUNC0(ctx, span->font);
			FUNC2(ctx, span->items);
			FUNC2(ctx, span);
			span = next;
		}
		FUNC2(ctx, text);
	}
}