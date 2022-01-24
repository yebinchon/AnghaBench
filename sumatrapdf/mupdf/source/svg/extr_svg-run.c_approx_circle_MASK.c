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
typedef  int /*<<< orphan*/  fz_path ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 float MAGIC_CIRCLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,float,float) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, fz_path *path, float cx, float cy, float rx, float ry)
{
	float mx = rx * MAGIC_CIRCLE;
	float my = ry * MAGIC_CIRCLE;
	FUNC2(ctx, path, cx, cy+ry);
	FUNC1(ctx, path, cx + mx, cy + ry, cx + rx, cy + my, cx + rx, cy);
	FUNC1(ctx, path, cx + rx, cy - my, cx + mx, cy - ry, cx, cy - ry);
	FUNC1(ctx, path, cx - mx, cy - ry, cx - rx, cy - my, cx - rx, cy);
	FUNC1(ctx, path, cx - rx, cy + my, cx - mx, cy + ry, cx, cy + ry);
	FUNC0(ctx, path);
}