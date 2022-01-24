#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float x; float y; } ;
struct TYPE_9__ {scalar_t__ cmd_len; TYPE_1__ current; scalar_t__ packed; } ;
typedef  TYPE_2__ fz_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ FZ_MOVETO ; 
 int /*<<< orphan*/  FZ_QUADTO ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,float,float) ; 

void
FUNC6(fz_context *ctx, fz_path *path,
	float x1, float y1,
	float x2, float y2)
{
	float x0, y0;

	if (path->packed)
		FUNC2(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

	x0 = path->current.x;
	y0 = path->current.y;

	if (path->cmd_len == 0)
	{
		FUNC3(ctx, "quadto with no current point");
		return;
	}

	/* Check for degenerate cases: */
	if ((x0 == x1 && y0 == y1) || (x1 == x2 && y1 == y2))
	{
		if (x0 == x2 && y0 == y2 && FUNC0(path) != FZ_MOVETO)
			return;
		/* A line will suffice */
		FUNC1(ctx, path, x2, y2);
		return;
	}

	FUNC4(ctx, path, FZ_QUADTO);
	FUNC5(ctx, path, x1, y1);
	FUNC5(ctx, path, x2, y2);
}