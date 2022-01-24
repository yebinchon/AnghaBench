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
 float FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,float,int,int,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float*,float*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, xps_document *doc, fz_path *path, fz_xml *root, int stroking, int *skipped_stroke)
{
	/* ArcSegment pretty much follows the SVG algorithm for converting an
	 * arc in endpoint representation to an arc in centerpoint
	 * representation. Once in centerpoint it can be given to the
	 * graphics library in the form of a postscript arc. */

	float rotation_angle;
	int is_large_arc, is_clockwise;
	float point_x, point_y;
	float size_x, size_y;
	int is_stroked;

	char *point_att = FUNC3(root, "Point");
	char *size_att = FUNC3(root, "Size");
	char *rotation_angle_att = FUNC3(root, "RotationAngle");
	char *is_large_arc_att = FUNC3(root, "IsLargeArc");
	char *sweep_direction_att = FUNC3(root, "SweepDirection");
	char *is_stroked_att = FUNC3(root, "IsStroked");

	if (!point_att || !size_att || !rotation_angle_att || !is_large_arc_att || !sweep_direction_att)
	{
		FUNC2(ctx, "ArcSegment element is missing attributes");
		return;
	}

	is_stroked = 1;
	if (is_stroked_att && !FUNC4(is_stroked_att, "false"))
			is_stroked = 0;
	if (!is_stroked)
		*skipped_stroke = 1;

	point_x = point_y = 0;
	size_x = size_y = 0;

	FUNC6(ctx, doc, point_att, &point_x, &point_y);
	FUNC6(ctx, doc, size_att, &size_x, &size_y);
	rotation_angle = FUNC0(rotation_angle_att);
	is_large_arc = !FUNC4(is_large_arc_att, "true");
	is_clockwise = !FUNC4(sweep_direction_att, "Clockwise");

	if (stroking && !is_stroked)
	{
		FUNC1(ctx, path, point_x, point_y);
		return;
	}

	FUNC5(ctx, doc, path, size_x, size_y, rotation_angle, is_large_arc, is_clockwise, point_x, point_y);
}