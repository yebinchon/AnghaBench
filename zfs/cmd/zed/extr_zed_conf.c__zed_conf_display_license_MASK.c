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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static void
FUNC2(void)
{
	const char **pp;
	const char *text[] = {
	    "The ZFS Event Daemon (ZED) is distributed under the terms of the",
	    "  Common Development and Distribution License (CDDL-1.0)",
	    "  <http://opensource.org/licenses/CDDL-1.0>.",
	    "",
	    "Developed at Lawrence Livermore National Laboratory"
	    " (LLNL-CODE-403049).",
	    "",
	    NULL
	};

	for (pp = text; *pp; pp++)
		FUNC1("%s\n", *pp);

	FUNC0(EXIT_SUCCESS);
}