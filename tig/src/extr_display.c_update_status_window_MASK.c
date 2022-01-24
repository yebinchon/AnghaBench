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
typedef  int /*<<< orphan*/  va_list ;
struct view {scalar_t__ has_scrolled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ input_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int status_empty ; 
 int /*<<< orphan*/  status_win ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ use_scroll_status_wclear ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool
FUNC8(struct view *view, const char *context, const char *msg, va_list args)
{
	if (input_mode)
		return false;

	if (!status_empty || *msg) {
		FUNC7(status_win, 0, 0);
		if (view && view->has_scrolled && use_scroll_status_wclear)
			FUNC5(status_win);
		if (*msg) {
			FUNC4(status_win, msg, args);
			status_empty = false;
		} else {
			status_empty = true;
		}
		FUNC6(status_win);

		if (context && *context) {
			size_t contextlen = FUNC3(context);
			int x, y, width, ___;

			FUNC1(status_win, y, x);
			FUNC0(status_win, ___, width);
			(void) ___;
			if (contextlen < width - x) {
				FUNC2(status_win, 0, width - contextlen, "%s", context);
				FUNC7(status_win, y, x);
			}
		}

		return true;
	}

	return false;
}