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
typedef  enum request { ____Placeholder_request } request ;

/* Variables and functions */
 int /*<<< orphan*/  OPEN_FORWARD_STDIN ; 
 int /*<<< orphan*/  OPEN_STDIN ; 
 int REQ_NONE ; 
 int REQ_VIEW_DIFF ; 
 int REQ_VIEW_PAGER ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_cmdline_args ; 
 int /*<<< orphan*/  opt_rev_args ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static enum request
FUNC6(enum request request)
{
	if (request == REQ_VIEW_PAGER) {
		/* Detect if the user requested the main view. */
		if (FUNC0(opt_rev_args, "--stdin")) {
			FUNC3(NULL, OPEN_FORWARD_STDIN);
		} else if (FUNC0(opt_cmdline_args, "--pretty=raw")) {
			FUNC3(NULL, OPEN_STDIN);
		} else {
			FUNC4(NULL, OPEN_STDIN);
		}

	} else if (request == REQ_VIEW_DIFF) {
		if (FUNC0(opt_rev_args, "--stdin"))
			FUNC2(NULL, OPEN_FORWARD_STDIN);
		else
			FUNC2(NULL, OPEN_STDIN);

	} else {
		FUNC1(STDIN_FILENO);
		FUNC5("Ignoring stdin.");
		return request;
	}

	return REQ_NONE;
}