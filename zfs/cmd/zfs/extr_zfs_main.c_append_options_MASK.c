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
 int /*<<< orphan*/  B_FALSE ; 
 int MNT_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(char *mntopts, char *newopts)
{
	int len = FUNC3(mntopts);

	/* original length plus new string to append plus 1 for the comma */
	if (len + 1 + FUNC3(newopts) >= MNT_LINE_MAX) {
		(void) FUNC0(stderr, FUNC1("the opts argument for "
		    "'%s' option is too long (more than %d chars)\n"),
		    "-o", MNT_LINE_MAX);
		FUNC4(B_FALSE);
	}

	if (*mntopts)
		mntopts[len++] = ',';

	(void) FUNC2(&mntopts[len], newopts);
}