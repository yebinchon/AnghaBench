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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,float*,float*) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, xps_document *doc, fz_path *path, fz_xml *root, int stroking, int *skipped_stroke)
{
	char *points_att = FUNC3(root, "Points");
	char *is_stroked_att = FUNC3(root, "IsStroked");
	float x[3], y[3];
	int is_stroked;
	char *s;
	int n;

	if (!points_att)
	{
		FUNC2(ctx, "PolyBezierSegment element has no points");
		return;
	}

	is_stroked = 1;
	if (is_stroked_att && !FUNC4(is_stroked_att, "false"))
			is_stroked = 0;
	if (!is_stroked)
		*skipped_stroke = 1;

	s = points_att;
	n = 0;
	while (*s != 0)
	{
		while (*s == ' ') s++;
		s = FUNC5(ctx, doc, s, &x[n], &y[n]);
		n ++;
		if (n == 3)
		{
			if (stroking && !is_stroked)
				FUNC1(ctx, path, x[2], y[2]);
			else
				FUNC0(ctx, path, x[0], y[0], x[1], y[1], x[2], y[2]);
			n = 0;
		}
	}
}