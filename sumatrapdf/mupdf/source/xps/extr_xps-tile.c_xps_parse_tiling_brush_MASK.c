#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xps_resource ;
struct TYPE_23__ {int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ xps_document ;
struct closure {char* base_uri; void (* func ) (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ;void* user; int /*<<< orphan*/ * root; int /*<<< orphan*/ * dict; } ;
typedef  int /*<<< orphan*/  fz_xml ;
struct TYPE_24__ {float x1; float x0; float y1; float y0; } ;
typedef  TYPE_3__ fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int TILE_FLIP_X ; 
 int TILE_FLIP_X_Y ; 
 int TILE_FLIP_Y ; 
 int TILE_NONE ; 
 int TILE_TILE ; 
 int FUNC0 (float) ; 
 float FUNC1 (float) ; 
 int FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__,TYPE_3__,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float,float) ; 
 TYPE_3__ FUNC8 (TYPE_3__,int /*<<< orphan*/ ) ; 
 TYPE_3__ fz_unit_rect ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,float,float) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__,int,struct closure*) ; 
 TYPE_3__ FUNC18 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

void
FUNC21(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
	char *base_uri, xps_resource *dict, fz_xml *root,
	void (*func)(fz_context *ctx, xps_document*, fz_matrix, fz_rect, char*, xps_resource*, fz_xml*, void*), void *user)
{
	fz_device *dev = doc->dev;
	fz_xml *node;
	struct closure c;

	char *opacity_att;
	char *transform_att;
	char *viewbox_att;
	char *viewport_att;
	char *tile_mode_att;

	fz_xml *transform_tag = NULL;

	fz_rect viewbox;
	fz_rect viewport;
	float xstep, ystep;
	float xscale, yscale;
	int tile_mode;

	opacity_att = FUNC10(root, "Opacity");
	transform_att = FUNC10(root, "Transform");
	viewbox_att = FUNC10(root, "Viewbox");
	viewport_att = FUNC10(root, "Viewport");
	tile_mode_att = FUNC10(root, "TileMode");

	c.base_uri = base_uri;
	c.dict = dict;
	c.root = root;
	c.user = user;
	c.func = func;

	for (node = FUNC11(root); node; node = FUNC13(node))
	{
		if (FUNC12(node, "ImageBrush.Transform"))
			transform_tag = FUNC11(node);
		if (FUNC12(node, "VisualBrush.Transform"))
			transform_tag = FUNC11(node);
	}

	FUNC20(ctx, doc, dict, &transform_att, &transform_tag, NULL);

	ctm = FUNC19(ctx, doc, transform_att, transform_tag, ctm);

	viewbox = fz_unit_rect;
	if (viewbox_att)
		viewbox = FUNC18(ctx, doc, viewbox_att);

	viewport = fz_unit_rect;
	if (viewport_att)
		viewport = FUNC18(ctx, doc, viewport_att);

	if (FUNC1(viewport.x1 - viewport.x0) < 0.01f || FUNC1(viewport.y1 - viewport.y0) < 0.01f)
		FUNC9(ctx, "not drawing tile for viewport size %.4f x %.4f", viewport.x1 - viewport.x0, viewport.y1 - viewport.y0);
	else if (FUNC1(viewbox.x1 - viewbox.x0) < 0.01f || FUNC1(viewbox.y1 - viewbox.y0) < 0.01f)
		FUNC9(ctx, "not drawing tile for viewbox size %.4f x %.4f", viewbox.x1 - viewbox.x0, viewbox.y1 - viewbox.y0);

	/* some sanity checks on the viewport/viewbox size */
	if (FUNC1(viewport.x1 - viewport.x0) < 0.01f) return;
	if (FUNC1(viewport.y1 - viewport.y0) < 0.01f) return;
	if (FUNC1(viewbox.x1 - viewbox.x0) < 0.01f) return;
	if (FUNC1(viewbox.y1 - viewbox.y0) < 0.01f) return;

	xstep = viewbox.x1 - viewbox.x0;
	ystep = viewbox.y1 - viewbox.y0;

	xscale = (viewport.x1 - viewport.x0) / xstep;
	yscale = (viewport.y1 - viewport.y0) / ystep;

	tile_mode = TILE_NONE;
	if (tile_mode_att)
	{
		if (!FUNC14(tile_mode_att, "None"))
			tile_mode = TILE_NONE;
		if (!FUNC14(tile_mode_att, "Tile"))
			tile_mode = TILE_TILE;
		if (!FUNC14(tile_mode_att, "FlipX"))
			tile_mode = TILE_FLIP_X;
		if (!FUNC14(tile_mode_att, "FlipY"))
			tile_mode = TILE_FLIP_Y;
		if (!FUNC14(tile_mode_att, "FlipXY"))
			tile_mode = TILE_FLIP_X_Y;
	}

	if (tile_mode == TILE_FLIP_X || tile_mode == TILE_FLIP_X_Y)
		xstep *= 2;
	if (tile_mode == TILE_FLIP_Y || tile_mode == TILE_FLIP_X_Y)
		ystep *= 2;

	FUNC15(ctx, doc, ctm, area, base_uri, dict, opacity_att, NULL);

	ctm = FUNC7(ctm, viewport.x0, viewport.y0);
	ctm = FUNC6(ctm, xscale, yscale);
	ctm = FUNC7(ctm, -viewbox.x0, -viewbox.y0);

	if (tile_mode != TILE_NONE)
	{
		int x0, y0, x1, y1;
		fz_matrix invctm;
		invctm = FUNC5(ctm);
		area = FUNC8(area, invctm);
		x0 = FUNC2(area.x0 / xstep);
		y0 = FUNC2(area.y0 / ystep);
		x1 = FUNC0(area.x1 / xstep);
		y1 = FUNC0(area.y1 / ystep);

#ifdef TILE
		if ((x1 - x0) * (y1 - y0) > 1)
#else
		if (0)
#endif
		{
			fz_rect bigview = viewbox;
			bigview.x1 = bigview.x0 + xstep;
			bigview.y1 = bigview.y0 + ystep;
			FUNC3(ctx, dev, area, bigview, xstep, ystep, ctm);
			FUNC17(ctx, doc, ctm, viewbox, tile_mode, &c);
			FUNC4(ctx, dev);
		}
		else
		{
			int x, y;
			for (y = y0; y < y1; y++)
			{
				for (x = x0; x < x1; x++)
				{
					fz_matrix ttm = FUNC7(ctm, xstep * x, ystep * y);
					FUNC17(ctx, doc, ttm, viewbox, tile_mode, &c);
				}
			}
		}
	}
	else
	{
		FUNC17(ctx, doc, ctm, viewbox, tile_mode, &c);
	}

	FUNC16(ctx, doc, base_uri, dict, opacity_att, NULL);
}