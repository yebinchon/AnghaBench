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
struct window_pane {int /*<<< orphan*/  base; int /*<<< orphan*/  modes; struct input_ctx* ictx; } ;
struct screen_write_ctx {int dummy; } ;
struct input_ctx {int last; scalar_t__ flags; int /*<<< orphan*/ * state; struct screen_write_ctx ctx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*) ; 
 int /*<<< orphan*/  input_state_ground ; 
 int /*<<< orphan*/  FUNC3 (struct screen_write_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen_write_ctx*,struct window_pane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct screen_write_ctx*) ; 

void
FUNC6(struct window_pane *wp, int clear)
{
	struct input_ctx	*ictx = wp->ictx;
	struct screen_write_ctx	*sctx = &ictx->ctx;

	FUNC2(ictx);

	if (clear) {
		if (FUNC0(&wp->modes))
			FUNC4(sctx, wp, &wp->base);
		else
			FUNC4(sctx, NULL, &wp->base);
		FUNC3(sctx);
		FUNC5(sctx);
	}

	FUNC1(ictx);

	ictx->last = -1;

	ictx->state = &input_state_ground;
	ictx->flags = 0;
}