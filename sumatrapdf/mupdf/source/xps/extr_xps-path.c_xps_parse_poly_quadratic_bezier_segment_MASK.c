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
typedef  int /*<<< orphan*/  xps_document ;
typedef  int /*<<< orphan*/  fz_xml ;
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ fz_point ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float*,float*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, xps_document *doc, fz_path *path, fz_xml *root, int stroking, int *skipped_stroke)
{
	char *points_att = FUNC4(root, "Points");
	char *is_stroked_att = FUNC4(root, "IsStroked");
	float x[2], y[2];
	int is_stroked;
	fz_point pt;
	char *s;
	int n;

	if (!points_att)
	{
		FUNC3(ctx, "PolyQuadraticBezierSegment element has no points");
		return;
	}

	is_stroked = 1;
	if (is_stroked_att && !FUNC5(is_stroked_att, "false"))
			is_stroked = 0;
	if (!is_stroked)
		*skipped_stroke = 1;

	s = points_att;
	n = 0;
	while (*s != 0)
	{
		while (*s == ' ') s++;
		s = FUNC6(ctx, doc, s, &x[n], &y[n]);
		n ++;
		if (n == 2)
		{
			if (stroking && !is_stroked)
			{
				FUNC2(ctx, path, x[1], y[1]);
			}
			else
			{
				pt = FUNC0(ctx, path);
				FUNC1(ctx, path,
						(pt.x + 2 * x[0]) / 3, (pt.y + 2 * y[0]) / 3,
						(x[1] + 2 * x[0]) / 3, (y[1] + 2 * y[0]) / 3,
						x[1], y[1]);
			}
			n = 0;
		}
	}
}