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
struct view {int /*<<< orphan*/  private; } ;
struct buffer {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (struct view*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_diff_highlight ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

bool
FUNC3(struct view *view, struct buffer *buf, bool force_stop)
{
	if (!buf) {
		if (!FUNC1(view->private)) {
			FUNC2("Failed run the diff-highlight program: %s", opt_diff_highlight);
			return false;
		}

		return true;
	}

	return FUNC0(view, buf->data, view->private);
}