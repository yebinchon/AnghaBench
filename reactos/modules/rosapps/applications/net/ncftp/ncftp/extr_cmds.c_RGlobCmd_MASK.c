#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__* noglobargv; } ;
struct TYPE_9__ {TYPE_1__* first; } ;
struct TYPE_8__ {char* line; struct TYPE_8__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__ LineList ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  TYPE_3__* ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  gConn ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  kErrGlobFailed ; 
 int /*<<< orphan*/  kGlobNo ; 
 int /*<<< orphan*/  kGlobYes ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int i;
	int result;
	int np = 0;
	LineList ll;
	LinePtr lp;

	FUNC0(gUnusedArg);
	for (i=1; i<argc; i++) {
		FUNC4(&ll);
		result = FUNC3(&gConn, &ll, argv[i], (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes);
		if (result < 0) {
			FUNC2(&gConn, result, kErrGlobFailed, "remote glob", argv[i]);
		} else {
			for (lp = ll.first; lp != NULL; lp = lp->next) {
				if (lp->line != NULL) {
					if (np > 0)
						(void) FUNC5(" ");
					(void) FUNC5("%s", lp->line);
					np++;
				}
			}
		}
		FUNC1(&ll);
	}
	(void) FUNC5("\n");
}