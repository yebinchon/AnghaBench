#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct view {int dummy; } ;
struct line {int dummy; } ;
struct TYPE_3__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DIFF_CHUNK ; 
 scalar_t__ LINE_STAT_UNSTAGED ; 
 struct line* FUNC0 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,struct line*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ stage_line_type ; 
 TYPE_1__ stage_status ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC6(struct view *view, struct line *line)
{
	struct line *chunk = NULL;

	if (!FUNC1() && stage_line_type == LINE_STAT_UNSTAGED)
		chunk = FUNC0(view, line, LINE_DIFF_CHUNK);

	if (chunk) {
		if (!FUNC2("Are you sure you want to revert changes?"))
			return false;

		if (!FUNC4(view, chunk, NULL, true)) {
			FUNC3("Failed to revert chunk");
			return false;
		}
		return true;

	} else {
		return FUNC5(stage_status.status ? &stage_status : NULL,
				     stage_line_type, false);
	}
}