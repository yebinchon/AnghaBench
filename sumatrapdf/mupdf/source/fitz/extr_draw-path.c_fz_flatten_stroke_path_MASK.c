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
typedef  int /*<<< orphan*/  fz_stroke_state ;
typedef  int /*<<< orphan*/  fz_rasterizer ;
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_irect ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

int
FUNC3(fz_context *ctx, fz_rasterizer *rast, const fz_path *path, const fz_stroke_state *stroke, fz_matrix ctm, float flatness, float linewidth, const fz_irect *scissor, fz_irect *bbox)
{
	if (FUNC2(ctx, rast, *scissor))
	{
		if (FUNC0(ctx, rast, path, stroke, ctm, flatness, linewidth, scissor, bbox))
			return 1;
		FUNC1(ctx, rast);
		bbox = NULL;
	}

	return FUNC0(ctx, rast, path, stroke, ctm, flatness, linewidth, scissor, bbox);
}