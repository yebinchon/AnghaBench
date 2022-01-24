#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  viewbox_h; int /*<<< orphan*/  viewport_h; int /*<<< orphan*/  viewbox_w; int /*<<< orphan*/  viewport_w; } ;
typedef  TYPE_1__ svg_state ;
typedef  int /*<<< orphan*/  svg_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,float*,float*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *inherit_state)
{
	svg_state local_state = *inherit_state;
	fz_xml *node;

	char *w_att = FUNC0(root, "width");
	char *h_att = FUNC0(root, "height");
	char *viewbox_att = FUNC0(root, "viewBox");

	/* get default viewport from viewBox if width and/or height is missing */
	if (viewbox_att && (!w_att || !h_att))
	{
		float x, y;
		FUNC3(viewbox_att, &x, &y, &local_state.viewbox_w, &local_state.viewbox_h);
		if (!w_att) local_state.viewport_w = local_state.viewbox_w;
		if (!h_att) local_state.viewport_h = local_state.viewbox_h;
	}

	FUNC6(ctx, doc, root, &local_state);
	FUNC5(ctx, doc, root, &local_state);
	FUNC4(ctx, doc, root, &local_state);

	for (node = FUNC1(root); node; node = FUNC2(node))
		FUNC7(ctx, dev, doc, node, &local_state);
}