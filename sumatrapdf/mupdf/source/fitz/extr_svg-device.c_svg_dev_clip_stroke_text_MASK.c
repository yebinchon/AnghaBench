#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ text_as_text; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ svg_device ;
struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef  TYPE_2__ fz_text_span ;
struct TYPE_19__ {TYPE_2__* head; } ;
typedef  TYPE_3__ fz_text ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
struct TYPE_20__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
typedef  TYPE_4__ fz_rect ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  font ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_4__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_default_color_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fz_identity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm, fz_rect scissor)
{
	svg_device *sdev = (svg_device*)dev;

	fz_output *out;
	fz_rect bounds;
	int num = sdev->id++;
	float white[3] = { 255, 255, 255 };
	font *fnt;
	fz_text_span *span;

	bounds = FUNC1(ctx, text, NULL, ctm);

	out = FUNC4(ctx, sdev);
	FUNC3(ctx, out, "<mask id=\"ma%d\" x=\"%g\" y=\"%g\" width=\"%g\" height=\"%g\"",
		num, bounds.x0, bounds.y0, bounds.x1 - bounds.x0, bounds.y1 - bounds.y0);
	FUNC3(ctx, out, " maskUnits=\"userSpaceOnUse\" maskContentUnits=\"userSpaceOnUse\">\n");
	if (sdev->text_as_text)
	{
		for (span = text->head; span; span = span->next)
		{
			FUNC3(ctx, out, "<text");
			FUNC6(ctx, sdev, stroke, fz_identity);
			FUNC5(ctx, sdev, FUNC2(ctx), white, 1, fz_default_color_params);
			FUNC7(ctx, sdev, ctm, span);
		}
	}
	else
	{
		for (span = text->head; span; span = span->next)
		{
			fnt = FUNC8(ctx, dev, span, ctm);
			FUNC9(ctx, dev, span, stroke, ctm, FUNC2(ctx), white, 1.0f, fnt, fz_default_color_params);
		}
	}
	FUNC3(ctx, out, "</mask>\n");
	out = FUNC0(ctx, sdev);
	FUNC3(ctx, out, "<g mask=\"url(#ma%d)\">\n", num);
}