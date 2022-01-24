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
struct TYPE_3__ {int /*<<< orphan*/  fontsize; int /*<<< orphan*/  viewbox_h; void* viewport_h; int /*<<< orphan*/  viewbox_w; void* viewport_w; } ;
typedef  TYPE_1__ svg_state ;
typedef  int /*<<< orphan*/  svg_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(fz_context *ctx, svg_document *doc, fz_xml *node, svg_state *state)
{
	char *w_att = FUNC0(node, "width");
	char *h_att = FUNC0(node, "height");

	if (w_att)
		state->viewport_w = FUNC1(w_att, state->viewbox_w, state->fontsize);
	if (h_att)
		state->viewport_h = FUNC1(h_att, state->viewbox_h, state->fontsize);

}