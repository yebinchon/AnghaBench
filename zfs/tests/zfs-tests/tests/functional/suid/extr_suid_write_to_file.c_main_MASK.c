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
typedef  int mode_t ;

/* Variables and functions */
 int S_ISGID ; 
 int S_ISUID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(int argc, char *argv[])
{
	const char *name;
	mode_t extra;

	if (argc < 2) {
		FUNC1(stderr, "Invalid argc\n");
		FUNC0(1);
	}

	name = argv[1];
	if (FUNC2(name, "SUID") == 0) {
		extra = S_ISUID;
	} else if (FUNC2(name, "SGID") == 0) {
		extra = S_ISGID;
	} else if (FUNC2(name, "SUID_SGID") == 0) {
		extra = S_ISUID | S_ISGID;
	} else if (FUNC2(name, "NONE") == 0) {
		extra = 0;
	} else {
		FUNC1(stderr, "Invalid name %s\n", name);
		FUNC0(1);
	}

	FUNC3(extra);

	return (0);
}