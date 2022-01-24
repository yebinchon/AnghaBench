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
struct screen_write_ctx {int dummy; } ;
struct input_ctx {int old_mode; int /*<<< orphan*/  old_cy; int /*<<< orphan*/  old_cx; int /*<<< orphan*/  old_cell; int /*<<< orphan*/  cell; struct screen_write_ctx ctx; } ;

/* Variables and functions */
 int MODE_ORIGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct screen_write_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct screen_write_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*,int) ; 

__attribute__((used)) static void
FUNC4(struct input_ctx *ictx)
{
	struct screen_write_ctx	*sctx = &ictx->ctx;

	FUNC0(&ictx->cell, &ictx->old_cell, sizeof ictx->cell);
	if (ictx->old_mode & MODE_ORIGIN)
		FUNC3(sctx, MODE_ORIGIN);
	else
		FUNC2(sctx, MODE_ORIGIN);
	FUNC1(sctx, ictx->old_cx, ictx->old_cy, 0);
}