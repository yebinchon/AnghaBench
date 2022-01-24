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
struct view {int dummy; } ;
struct line {int dummy; } ;
struct diff_stat_context {char const* member_0; int /*<<< orphan*/  text; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_DEFAULT ; 
 int /*<<< orphan*/  LINE_DIFF_ADD ; 
 int /*<<< orphan*/  LINE_DIFF_DEL ; 
 int /*<<< orphan*/  LINE_DIFF_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_stat_context*,int /*<<< orphan*/ ,int) ; 
 struct line* FUNC1 (struct view*,char const*,int /*<<< orphan*/ ,struct diff_stat_context*) ; 
 scalar_t__ FUNC2 (struct diff_stat_context*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct line *
FUNC4(struct view *view, const char *text)
{
	struct diff_stat_context context = { text, LINE_DIFF_STAT };

	FUNC2(&context, '|', LINE_DEFAULT);
	if (FUNC2(&context, 'B', LINE_DEFAULT)) {
		/* Handle binary diffstat: Bin <deleted> -> <added> bytes */
		FUNC2(&context, ' ', LINE_DIFF_DEL);
		FUNC2(&context, '-', LINE_DEFAULT);
		FUNC2(&context, ' ', LINE_DIFF_ADD);
		FUNC2(&context, 'b', LINE_DEFAULT);

	} else {
		FUNC2(&context, '+', LINE_DIFF_ADD);
		FUNC2(&context, '-', LINE_DIFF_DEL);
	}
	FUNC0(&context, FUNC3(context.text), false);

	return FUNC1(view, text, LINE_DIFF_STAT, &context);
}