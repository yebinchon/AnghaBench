#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xps_document ;
struct stop {int dummy; } ;
typedef  int /*<<< orphan*/  fz_xml ;
struct TYPE_5__ {float x0; float y0; float x1; float y1; } ;
typedef  TYPE_1__ fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 scalar_t__ FLT_EPSILON ; 
 int SPREAD_REFLECT ; 
 int SPREAD_REPEAT ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 scalar_t__ FUNC1 (float) ; 
 float FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 float FUNC4 (float,float) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,float) ; 
 TYPE_1__ FUNC7 (TYPE_1__,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 float FUNC9 (float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct stop*,int,int,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float*,float*) ; 

__attribute__((used)) static void
FUNC12(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect area,
	struct stop *stops, int count,
	fz_xml *root, int spread)
{
	float x0, y0, r0;
	float x1, y1, r1;
	float xrad = 1;
	float yrad = 1;
	float invscale;
	int i, ma = 1;
	fz_matrix inv;

	char *center_att = FUNC8(root, "Center");
	char *origin_att = FUNC8(root, "GradientOrigin");
	char *radius_x_att = FUNC8(root, "RadiusX");
	char *radius_y_att = FUNC8(root, "RadiusY");

	x0 = y0 = 0.0f;
	x1 = y1 = 1.0f;
	xrad = 1.0f;
	yrad = 1.0f;

	if (origin_att)
		FUNC11(ctx, doc, origin_att, &x0, &y0);
	if (center_att)
		FUNC11(ctx, doc, center_att, &x1, &y1);
	if (radius_x_att)
		xrad = FUNC2(radius_x_att);
	if (radius_y_att)
		yrad = FUNC2(radius_y_att);

	xrad = FUNC4(0.01f, xrad);
	yrad = FUNC4(0.01f, yrad);

	/* scale the ctm to make ellipses */
	if (FUNC1(xrad) > FLT_EPSILON)
	{
		ctm = FUNC6(ctm, 1, yrad/xrad);
	}

	if (yrad != 0.0f)
	{
		invscale = xrad / yrad;
		y0 = y0 * invscale;
		y1 = y1 * invscale;
	}

	r0 = 0;
	r1 = xrad;

	inv = FUNC3(ctm);
	area = FUNC7(area, inv);
	ma = FUNC5(ma, FUNC0(FUNC9(area.x0 - x0, area.y0 - y0) / xrad));
	ma = FUNC5(ma, FUNC0(FUNC9(area.x1 - x0, area.y0 - y0) / xrad));
	ma = FUNC5(ma, FUNC0(FUNC9(area.x0 - x0, area.y1 - y0) / xrad));
	ma = FUNC5(ma, FUNC0(FUNC9(area.x1 - x0, area.y1 - y0) / xrad));

	if (spread == SPREAD_REPEAT)
	{
		for (i = ma - 1; i >= 0; i--)
			FUNC10(ctx, doc, ctm, stops, count, 0, x0, y0, r0 + i * xrad, x1, y1, r1 + i * xrad);
	}
	else if (spread == SPREAD_REFLECT)
	{
		if ((ma % 2) != 0)
			ma++;
		for (i = ma - 2; i >= 0; i -= 2)
		{
			FUNC10(ctx, doc, ctm, stops, count, 0, x0, y0, r0 + i * xrad, x1, y1, r1 + i * xrad);
			FUNC10(ctx, doc, ctm, stops, count, 0, x0, y0, r0 + (i + 2) * xrad, x1, y1, r1 + i * xrad);
		}
	}
	else
	{
		FUNC10(ctx, doc, ctm, stops, count, 1, x0, y0, r0, x1, y1, r1);
	}
}