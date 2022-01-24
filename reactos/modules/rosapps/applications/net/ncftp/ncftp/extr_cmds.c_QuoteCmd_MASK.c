#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lastFTPCmdResultLL; } ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gUnusedArg ; 

void
FUNC5(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	char cmdbuf[256];
	int i;

	FUNC0(gUnusedArg);
	(void) FUNC4(cmdbuf, argv[1]);
	for (i=2; i<argc; i++) {
		(void) FUNC3(cmdbuf, " ");
		(void) FUNC3(cmdbuf, argv[i]);
	}
	(void) FUNC1(&gConn, "%s", cmdbuf);
	FUNC2(&gConn.lastFTPCmdResultLL);
}