#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct window_pane {struct input_ctx* ictx; } ;
struct input_ctx {size_t param_list_len; int /*<<< orphan*/  since_ground; struct input_ctx* input_buf; int /*<<< orphan*/  timer; TYPE_1__* param_list; } ;
struct TYPE_2__ {scalar_t__ type; struct input_ctx* str; } ;

/* Variables and functions */
 scalar_t__ INPUT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct input_ctx*) ; 

void
FUNC3(struct window_pane *wp)
{
	struct input_ctx	*ictx = wp->ictx;
	u_int			 i;

	for (i = 0; i < ictx->param_list_len; i++) {
		if (ictx->param_list[i].type == INPUT_STRING)
			FUNC2(ictx->param_list[i].str);
	}

	FUNC1(&ictx->timer);

	FUNC2(ictx->input_buf);
	FUNC0(ictx->since_ground);

	FUNC2(ictx);
	wp->ictx = NULL;
}