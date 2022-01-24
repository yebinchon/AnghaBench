#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float viewport_w; float viewport_h; float viewbox_w; float viewbox_h; int viewbox_size; void* transform; } ;
typedef  TYPE_1__ svg_state ;
typedef  int /*<<< orphan*/  svg_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,void*) ; 
 float FUNC1 (float,float) ; 
 int /*<<< orphan*/  FUNC2 (float,float) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,float*,float*,float*,float*) ; 
 int FUNC7 (char*,int*,int*) ; 

void
FUNC8(fz_context *ctx, svg_document *doc, fz_xml *node, svg_state *state)
{
	char *viewbox_att = FUNC4(node, "viewBox");
	char *preserve_att = FUNC4(node, "preserveAspectRatio");
	if (viewbox_att)
	{
		/* scale and translate to fit [minx miny minx+w miny+h] to [0 0 viewport.w viewport.h] */
		float min_x, min_y, box_w, box_h, sx, sy;
		int align_x=1, align_y=1, preserve=1;
		float pad_x=0, pad_y=0;

		FUNC6(viewbox_att, &min_x, &min_y, &box_w, &box_h);
		sx = state->viewport_w / box_w;
		sy = state->viewport_h / box_h;

		if (preserve_att)
			preserve = FUNC7(preserve_att, &align_x, &align_y);
		if (preserve)
		{
			sx = sy = FUNC1(sx, sy);
			if (align_x == 1) pad_x = (box_w * sx - state->viewport_w) / 2;
			if (align_x == 2) pad_x = (box_w * sx - state->viewport_w);
			if (align_y == 1) pad_y = (box_h * sy - state->viewport_h) / 2;
			if (align_y == 2) pad_y = (box_h * sy - state->viewport_h);
			state->transform = FUNC0(FUNC3(-pad_x, -pad_y), state->transform);
		}
		state->transform = FUNC0(FUNC2(sx, sy), state->transform);
		state->transform = FUNC0(FUNC3(-min_x, -min_y), state->transform);
		state->viewbox_w = box_w;
		state->viewbox_h = box_h;
		state->viewbox_size = FUNC5(box_w*box_w + box_h*box_h) / FUNC5(2);
	}
}