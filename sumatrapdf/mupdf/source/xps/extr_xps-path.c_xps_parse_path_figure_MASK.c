#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float*,float*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static void
FUNC13(fz_context *ctx, xps_document *doc, fz_path *path, fz_xml *root, int stroking)
{
	fz_xml *node;

	char *is_closed_att;
	char *start_point_att;
	char *is_filled_att;

	int is_closed = 0;
	int is_filled = 1;
	float start_x = 0;
	float start_y = 0;

	int skipped_stroke = 0;

	is_closed_att = FUNC3(root, "IsClosed");
	start_point_att = FUNC3(root, "StartPoint");
	is_filled_att = FUNC3(root, "IsFilled");

	if (is_closed_att)
		is_closed = !FUNC7(is_closed_att, "true");
	if (is_filled_att)
		is_filled = !FUNC7(is_filled_att, "true");
	if (start_point_att)
		FUNC9(ctx, doc, start_point_att, &start_x, &start_y);

	if (!stroking && !is_filled) /* not filled, when filling */
		return;

	FUNC2(ctx, path, start_x, start_y);

	for (node = FUNC4(root); node; node = FUNC6(node))
	{
		if (FUNC5(node, "ArcSegment"))
			FUNC8(ctx, doc, path, node, stroking, &skipped_stroke);
		if (FUNC5(node, "PolyBezierSegment"))
			FUNC10(ctx, doc, path, node, stroking, &skipped_stroke);
		if (FUNC5(node, "PolyLineSegment"))
			FUNC11(ctx, doc, path, node, stroking, &skipped_stroke);
		if (FUNC5(node, "PolyQuadraticBezierSegment"))
			FUNC12(ctx, doc, path, node, stroking, &skipped_stroke);
	}

	if (is_closed)
	{
		if (stroking && skipped_stroke)
			FUNC1(ctx, path, start_x, start_y); /* we've skipped using fz_moveto... */
		else
			FUNC0(ctx, path); /* no skipped segments, safe to closepath properly */
	}
}