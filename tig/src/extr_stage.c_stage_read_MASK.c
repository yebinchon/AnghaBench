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
struct view {scalar_t__ parent; int /*<<< orphan*/  lines; struct stage_state* private; } ;
struct stage_state {int /*<<< orphan*/  diff; } ;
struct buffer {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DEFAULT ; 
 scalar_t__ LINE_STAT_UNTRACKED ; 
 scalar_t__ FUNC0 (struct view*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  opt_diff_highlight ; 
 int FUNC4 (struct view*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct view*,struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ stage_line_type ; 

__attribute__((used)) static bool
FUNC7(struct view *view, struct buffer *buf, bool force_stop)
{
	struct stage_state *state = view->private;

	if (stage_line_type == LINE_STAT_UNTRACKED)
		return FUNC4(view, buf ? buf->data : NULL, LINE_DEFAULT, NULL);

	if (!buf) {
		if (!FUNC1(&state->diff)) {
			FUNC6("Failed run the diff-highlight program: %s", opt_diff_highlight);
			return true;
		}
	}

	if (!buf && !view->lines && view->parent) {
		FUNC3(view->parent, true);
		return true;
	}

	if (!buf)
		FUNC2(view, &state->diff);

	if (buf && FUNC0(view, buf->data, &state->diff))
		return true;

	return FUNC5(view, buf, force_stop);
}