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
struct diff_stat_context {char const* member_0; int member_1; int member_2; int /*<<< orphan*/  text; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 int LINE_DIFF_ADD ; 
 int LINE_DIFF_ADD_HIGHLIGHT ; 
 int LINE_DIFF_DEL_HIGHLIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_stat_context*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct diff_stat_context*,char const*,int const) ; 
 int FUNC2 (struct view*,char const*,int,struct diff_stat_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct view *view, const char *text, enum line_type type)
{
	struct diff_stat_context context = { text, type, true };
	enum line_type hi_type = type == LINE_DIFF_ADD
				 ? LINE_DIFF_ADD_HIGHLIGHT : LINE_DIFF_DEL_HIGHLIGHT;
	const char *codes[] = { "\x1b[7m", "\x1b[27m" };
	const enum line_type types[] = { hi_type, type };
	int i;

	for (i = 0; FUNC1(&context, codes[i], types[i]); i = (i + 1) % 2)
		;

	FUNC0(&context, FUNC3(context.text), true);
	return FUNC2(view, text, type, &context);
}