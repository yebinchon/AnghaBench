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
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  gConn ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  kAppendNo ; 
 int /*<<< orphan*/  kErrCouldNotStartDataTransfer ; 
 int /*<<< orphan*/  kResumeNo ; 
 int /*<<< orphan*/  kTypeAscii ; 

void
FUNC3(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int result;
	int i;

	FUNC0(gUnusedArg);
	for (i=1; i<argc; i++) {
		result = FUNC1(&gConn, argv[i], NULL, kTypeAscii, STDOUT_FILENO, kResumeNo, kAppendNo);
		FUNC2(&gConn, result, kErrCouldNotStartDataTransfer, "cat", argv[i]);
	}
}