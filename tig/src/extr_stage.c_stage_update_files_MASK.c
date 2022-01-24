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
struct view {struct line* line; struct view* parent; } ;
struct line {int dummy; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 int LINE_DIFF_CHUNK ; 
 struct line* FUNC0 (struct view*,struct line*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct view*,struct line*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct view*,struct line*) ; 
 struct view status_view ; 

__attribute__((used)) static bool
FUNC4(struct view *view, enum line_type type)
{
	struct line *line;

	if (view->parent != &status_view) {
		bool updated = false;

		for (line = view->line; (line = FUNC0(view, line, LINE_DIFF_CHUNK)); line++) {
			if (!FUNC2(view, line, NULL, false)) {
				FUNC1("Failed to apply chunk");
				return false;
			}
			updated = true;
		}

		return updated;
	}

	view = view->parent;
	line = FUNC0(view, view->line, type);
	return line && FUNC3(view, line + 1);
}