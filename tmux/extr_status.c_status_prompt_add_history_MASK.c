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

/* Variables and functions */
 int PROMPT_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * status_prompt_hlist ; 
 int status_prompt_hsize ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *line)
{
	size_t	size;

	if (status_prompt_hsize > 0 &&
	    FUNC2(status_prompt_hlist[status_prompt_hsize - 1], line) == 0)
		return;

	if (status_prompt_hsize == PROMPT_HISTORY) {
		FUNC0(status_prompt_hlist[0]);

		size = (PROMPT_HISTORY - 1) * sizeof *status_prompt_hlist;
		FUNC1(&status_prompt_hlist[0], &status_prompt_hlist[1], size);

		status_prompt_hlist[status_prompt_hsize - 1] = FUNC4(line);
		return;
	}

	status_prompt_hlist = FUNC3(status_prompt_hlist,
	    status_prompt_hsize + 1, sizeof *status_prompt_hlist);
	status_prompt_hlist[status_prompt_hsize++] = FUNC4(line);
}