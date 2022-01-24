#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* first; } ;
struct TYPE_5__ {char* line; struct TYPE_5__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__ LineList ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  gConn ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  kErrHELPFailed ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void
FUNC5(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int i, result;
	LineList ll;
	LinePtr lp;

	FUNC0(gUnusedArg);
	if (argc == 1) {
		result = FUNC3(&gConn, NULL, &ll);
		if (result < 0)
			FUNC2(&gConn, result, kErrHELPFailed, "HELP failed", NULL);
		else {
			for (lp = ll.first; lp != NULL; lp = lp->next)
				(void) FUNC4("%s\n", lp->line);
		}
		FUNC1(&ll);
	} else {
		for (i=1; i<argc; i++) {
			result = FUNC3(&gConn, argv[i], &ll);
			if (result < 0)
				FUNC2(&gConn, result, kErrHELPFailed, "HELP failed for", argv[i]);
			else {
				for (lp = ll.first; lp != NULL; lp = lp->next)
					(void) FUNC4("%s\n", lp->line);
			}
			FUNC1(&ll);
		}
	}
}