#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cmd_len; int coord_len; int /*<<< orphan*/  begin; int /*<<< orphan*/  current; scalar_t__ packed; } ;
typedef  TYPE_1__ fz_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ FZ_MOVETO ; 
 int /*<<< orphan*/  FZ_RECTTO ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,float,float) ; 

void
FUNC4(fz_context *ctx, fz_path *path, float x1, float y1, float x2, float y2)
{
	if (path->packed)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

	if (path->cmd_len > 0 && FUNC0(path) == FZ_MOVETO)
	{
		/* Collapse moveto followed by rectto. */
		path->coord_len -= 2;
		path->cmd_len--;
	}

	FUNC2(ctx, path, FZ_RECTTO);
	FUNC3(ctx, path, x1, y1);
	FUNC3(ctx, path, x2, y2);

	path->current = path->begin;
}