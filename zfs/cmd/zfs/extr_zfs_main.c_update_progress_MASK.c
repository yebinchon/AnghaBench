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
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ pt_begin ; 
 char* pt_header ; 
 int /*<<< orphan*/  pt_reverse ; 
 scalar_t__ pt_shown ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(char *update)
{
	if (!pt_shown && FUNC3(NULL) > pt_begin) {
		int len = FUNC2(update);

		(void) FUNC1("%s: %s%*.*s", pt_header, update, len, len,
		    pt_reverse);
		(void) FUNC0(stdout);
		pt_shown = B_TRUE;
	} else if (pt_shown) {
		int len = FUNC2(update);

		(void) FUNC1("%s%*.*s", update, len, len, pt_reverse);
		(void) FUNC0(stdout);
	}
}