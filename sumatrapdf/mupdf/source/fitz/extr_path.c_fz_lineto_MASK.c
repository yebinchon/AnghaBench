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
 int /*<<< orphan*/  FZ_DEGENLINETO ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FZ_HORIZTO ; 
 int /*<<< orphan*/  FZ_LINETO ; 
 scalar_t__ FZ_MOVETO ; 
 int /*<<< orphan*/  FZ_VERTTO ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,float,int) ; 

void
FUNC6(fz_context *ctx, fz_path *path, float x, float y)
{
	float x0, y0;

	if (path->packed)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

	x0 = path->current.x;
	y0 = path->current.y;

	if (path->cmd_len == 0)
	{
		FUNC2(ctx, "lineto with no current point");
		return;
	}

	/* (Anything other than MoveTo) followed by (LineTo the same place) is a nop */
	if (FUNC0(path) != FZ_MOVETO && x0 == x && y0 == y)
		return;

	if (x0 == x)
	{
		if (y0 == y)
		{
			if (FUNC0(path) != FZ_MOVETO)
				return;
			FUNC3(ctx, path, FZ_DEGENLINETO);
		}
		else
		{
			FUNC3(ctx, path, FZ_VERTTO);
			FUNC5(ctx, path, y, 0);
		}
	}
	else if (y0 == y)
	{
		FUNC3(ctx, path, FZ_HORIZTO);
		FUNC5(ctx, path, x, 1);
	}
	else
	{
		FUNC3(ctx, path, FZ_LINETO);
		FUNC4(ctx, path, x, y);
	}
}