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
struct view {TYPE_1__* env; } ;
struct buffer {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__ goto_lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DEFAULT ; 
 int FUNC0 (struct view*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct view*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC2(struct view *view, struct buffer *buf, bool force_stop)
{
	if (!buf) {
		if (view->env->goto_lineno > 0) {
			FUNC1(view, view->env->goto_lineno);
			view->env->goto_lineno = 0;
		}
		return true;
	}

	return FUNC0(view, buf->data, LINE_DEFAULT, NULL);
}