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
struct view {scalar_t__ lines; char* vid; scalar_t__ pipe; int /*<<< orphan*/ ** argv; struct diff_state* private; } ;
struct diff_state {int adding_describe_ref; } ;
struct buffer {int /*<<< orphan*/  data; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int /*<<< orphan*/  OPEN_EXTRA ; 
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (struct view*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct view*,int /*<<< orphan*/ ,struct diff_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_state*) ; 
 int FUNC4 (struct view*,struct buffer*,struct diff_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct view*,struct diff_state*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  opt_diff_highlight ; 
 int /*<<< orphan*/ ** opt_file_args ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (struct view*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC13(struct view *view, struct buffer *buf, bool force_stop)
{
	struct diff_state *state = view->private;

	if (state->adding_describe_ref)
		return FUNC4(view, buf, state);

	if (!buf) {
		if (!FUNC3(state)) {
			FUNC10("Failed run the diff-highlight program: %s", opt_diff_highlight);
			return false;
		}

		/* Fall back to retry if no diff will be shown. */
		if (view->lines == 0 && opt_file_args) {
			int pos = FUNC0(view->argv)
				- FUNC0(opt_file_args) - 1;

			if (pos > 0 && !FUNC11(view->argv[pos], "--")) {
				for (; view->argv[pos]; pos++) {
					FUNC6((void *) view->argv[pos]);
					view->argv[pos] = NULL;
				}

				if (view->pipe)
					FUNC8(view->pipe);
				if (FUNC12(view, 0))
					return false;
			}
		}

		FUNC5(view, state);

		if (!state->adding_describe_ref && !FUNC9(view->vid)) {
			const char *describe_argv[] = { "git", "describe", view->vid, NULL };
			enum status_code code = FUNC1(view, NULL, describe_argv, OPEN_EXTRA);

			if (code != SUCCESS) {
				FUNC10("Failed to load describe data: %s", FUNC7(code));
				return true;
			}

			state->adding_describe_ref = true;
			return false;
		}

		return true;
	}

	return FUNC2(view, buf->data, state);
}