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
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  gUnusedArg ; 

void
FUNC2(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	FUNC0(gUnusedArg);
	if (argc < 2)
		FUNC1(NULL, NULL);
	else if (argc == 2)
		FUNC1(argv[1], NULL);
	else
		FUNC1(argv[1], argv[2]);
}