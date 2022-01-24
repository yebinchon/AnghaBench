#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ use_depth; int /*<<< orphan*/  transform; int /*<<< orphan*/  fontsize; int /*<<< orphan*/  viewbox_h; int /*<<< orphan*/  viewbox_w; } ;
typedef  TYPE_1__ svg_state ;
struct TYPE_12__ {int /*<<< orphan*/  idmap; } ;
typedef  TYPE_2__ svg_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ MAX_USE_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float,float) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 float FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, fz_device *dev, svg_document *doc, fz_xml *root, const svg_state *inherit_state)
{
	svg_state local_state = *inherit_state;

	char *xlink_href_att = FUNC4(root, "xlink:href");
	char *x_att = FUNC4(root, "x");
	char *y_att = FUNC4(root, "y");

	float x = 0;
	float y = 0;

	if (++local_state.use_depth > MAX_USE_DEPTH)
	{
		FUNC3(ctx, "svg: too much recursion");
		return;
	}

	FUNC6(ctx, doc, root, &local_state);
	if (x_att) x = FUNC7(x_att, local_state.viewbox_w, local_state.fontsize);
	if (y_att) y = FUNC7(y_att, local_state.viewbox_h, local_state.fontsize);

	local_state.transform = FUNC0(FUNC1(x, y), local_state.transform);

	if (xlink_href_att && xlink_href_att[0] == '#')
	{
		fz_xml *linked = FUNC2(ctx, doc->idmap, xlink_href_att + 1);
		if (linked)
		{
			if (FUNC5(linked, "symbol"))
				FUNC9(ctx, dev, doc, root, linked, &local_state);
			else
				FUNC8(ctx, dev, doc, linked, &local_state);
			return;
		}
	}

	FUNC3(ctx, "svg: cannot find linked symbol");
}