#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_device ;
struct TYPE_5__ {int /*<<< orphan*/  trm; int /*<<< orphan*/  font; struct TYPE_5__* next; } ;
typedef  TYPE_1__ fz_text_span ;
struct TYPE_6__ {TYPE_1__* head; } ;
typedef  TYPE_2__ fz_text ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
	pdf_device *pdev = (pdf_device*)dev;
	fz_text_span *span;

	FUNC2(ctx, pdev);
	FUNC4(ctx, pdev);

	FUNC1(ctx, pdev, ctm);

	for (span = text->head; span; span = span->next)
	{
		FUNC0(ctx, pdev, 7);
		FUNC3(ctx, pdev, span->font, span->trm);
		FUNC5(ctx, pdev, span);
	}
}