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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/ * status_prompt_hlist ; 
 size_t status_prompt_hsize ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
	FILE	*f;
	u_int	 i;
	char	*history_file;

	if ((history_file = FUNC6()) == NULL)
		return;
	FUNC5("saving history to %s", history_file);

	f = FUNC1(history_file, "w");
	if (f == NULL) {
		FUNC5("%s: %s", history_file, FUNC7(errno));
		FUNC4(history_file);
		return;
	}
	FUNC4(history_file);

	for (i = 0; i < status_prompt_hsize; i++) {
		FUNC3(status_prompt_hlist[i], f);
		FUNC2('\n', f);
	}
	FUNC0(f);

}