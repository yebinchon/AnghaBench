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
struct view {int /*<<< orphan*/  private; int /*<<< orphan*/  lines; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum open_flags { ____Placeholder_open_flags } open_flags ;

/* Variables and functions */
 int OPEN_PREPARED ; 
 int /*<<< orphan*/  REQ_PROMPT ; 
 int SUCCESS ; 
 int FUNC0 (struct view*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct view*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static enum status_code
FUNC5(struct view *view, enum open_flags flags)
{
	enum status_code code;

	if (!FUNC4(flags) && !view->lines && !(flags & OPEN_PREPARED))
		return FUNC2("No pager content, press %s to run command from prompt",
			     FUNC3(view, REQ_PROMPT));

	code = FUNC0(view, NULL, NULL, flags);
	if (code != SUCCESS)
		return code;

	return FUNC1(view, view->private);
}