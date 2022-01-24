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
struct window_pane {struct input_ctx* ictx; } ;
struct input_ctx {int /*<<< orphan*/  timer; int /*<<< orphan*/ * since_ground; int /*<<< orphan*/  input_buf; int /*<<< orphan*/  input_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPUT_BUF_START ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct input_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_pane*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_timer_callback ; 
 struct input_ctx* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct window_pane *wp)
{
	struct input_ctx	*ictx;

	ictx = wp->ictx = FUNC4(1, sizeof *ictx);

	ictx->input_space = INPUT_BUF_START;
	ictx->input_buf = FUNC5(INPUT_BUF_START);

	ictx->since_ground = FUNC0();
	if (ictx->since_ground == NULL)
		FUNC2("out of memory");

	FUNC1(&ictx->timer, input_timer_callback, ictx);

	FUNC3(wp, 0);
}