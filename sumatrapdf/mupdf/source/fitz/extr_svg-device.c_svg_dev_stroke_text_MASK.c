#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ text_as_text; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ svg_device ;
struct TYPE_11__ {struct TYPE_11__* next; } ;
typedef  TYPE_2__ fz_text_span ;
struct TYPE_12__ {TYPE_2__* head; } ;
typedef  TYPE_3__ fz_text ;
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;
typedef  int /*<<< orphan*/  font ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,float const*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,float const*,float,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *stroke, fz_matrix ctm,
	fz_colorspace *colorspace, const float *color, float alpha, fz_color_params color_params)
{
	svg_device *sdev = (svg_device*)dev;
	fz_output *out = sdev->out;
	font *fnt;
	fz_text_span *span;

	if (sdev->text_as_text)
	{
		for (span = text->head; span; span = span->next)
		{
			FUNC0(ctx, out, "<text");
			FUNC1(ctx, sdev, colorspace, color, alpha, color_params);
			FUNC2(ctx, sdev, ctm, span);
		}
	}
	else
	{
		for (span = text->head; span; span = span->next)
		{
			fnt = FUNC3(ctx, dev, span, ctm);
			FUNC4(ctx, dev, span, stroke, ctm, colorspace, color, alpha, fnt, color_params);
		}
	}
}