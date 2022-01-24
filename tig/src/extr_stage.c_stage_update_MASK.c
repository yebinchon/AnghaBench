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
struct TYPE_3__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DIFF_CHUNK ; 
 scalar_t__ LINE_STAT_UNTRACKED ; 
 struct line* FUNC0 (struct view*,struct line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,struct line*,struct line*,int) ; 
 scalar_t__ stage_line_type ; 
 TYPE_1__ stage_status ; 
 int /*<<< orphan*/  FUNC4 (struct view*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC6(struct view *view, struct line *line, bool single)
{
	struct line *chunk = NULL;

	if (!FUNC1() && stage_line_type != LINE_STAT_UNTRACKED)
		chunk = FUNC0(view, line, LINE_DIFF_CHUNK);

	if (chunk) {
		if (!FUNC3(view, chunk, single ? line : NULL, false)) {
			FUNC2("Failed to apply chunk");
			return false;
		}

	} else if (!stage_status.status) {
		if (!FUNC4(view, stage_line_type)) {
			FUNC2("Failed to update files");
			return false;
		}

	} else if (!FUNC5(&stage_status, stage_line_type)) {
		FUNC2("Failed to update file");
		return false;
	}

	return true;
}