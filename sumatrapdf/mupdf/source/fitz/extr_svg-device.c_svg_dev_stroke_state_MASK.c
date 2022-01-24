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
struct TYPE_5__ {int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ svg_device ;
struct TYPE_6__ {float linewidth; scalar_t__ start_cap; scalar_t__ dash_len; char* dash_phase; scalar_t__ linejoin; char* miterlimit; int /*<<< orphan*/ * dash_list; } ;
typedef  TYPE_2__ fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FZ_LINECAP_ROUND ; 
 scalar_t__ FZ_LINECAP_SQUARE ; 
 scalar_t__ FZ_LINEJOIN_BEVEL ; 
 scalar_t__ FZ_LINEJOIN_MITER ; 
 scalar_t__ FZ_LINEJOIN_MITER_XPS ; 
 scalar_t__ FZ_LINEJOIN_ROUND ; 
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC2(fz_context *ctx, svg_device *sdev, const fz_stroke_state *stroke_state, fz_matrix ctm)
{
	fz_output *out = sdev->out;
	float exp;

	exp = FUNC0(ctm);
	if (exp == 0)
		exp = 1;
	exp = stroke_state->linewidth/exp;

	FUNC1(ctx, out, " stroke-width=\"%g\"", exp);
	FUNC1(ctx, out, " stroke-linecap=\"%s\"",
		(stroke_state->start_cap == FZ_LINECAP_SQUARE ? "square" :
			(stroke_state->start_cap == FZ_LINECAP_ROUND ? "round" : "butt")));
	if (stroke_state->dash_len != 0)
	{
		int i;
		FUNC1(ctx, out, " stroke-dasharray=");
		for (i = 0; i < stroke_state->dash_len; i++)
			FUNC1(ctx, out, "%c%g", (i == 0 ? '\"' : ','), stroke_state->dash_list[i]);
		FUNC1(ctx, out, "\"");
		if (stroke_state->dash_phase != 0)
			FUNC1(ctx, out, " stroke-dashoffset=\"%g\"", stroke_state->dash_phase);
	}
	if (stroke_state->linejoin == FZ_LINEJOIN_MITER || stroke_state->linejoin == FZ_LINEJOIN_MITER_XPS)
		FUNC1(ctx, out, " stroke-miterlimit=\"%g\"", stroke_state->miterlimit);
	FUNC1(ctx, out, " stroke-linejoin=\"%s\"",
		(stroke_state->linejoin == FZ_LINEJOIN_BEVEL ? "bevel" :
			(stroke_state->linejoin == FZ_LINEJOIN_ROUND ? "round" : "miter")));
}