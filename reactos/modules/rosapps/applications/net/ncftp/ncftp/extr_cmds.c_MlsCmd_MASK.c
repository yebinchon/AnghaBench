#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {char* line; struct TYPE_4__* next; } ;
typedef  TYPE_1__* LinePtr ;
typedef  TYPE_2__ LineList ;
typedef  int /*<<< orphan*/  CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int const,char const** const,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  gConn ; 
 int gOptInd ; 
 int /*<<< orphan*/  gUnusedArg ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC8(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	int i;
	int opt;
	LinePtr linePtr, nextLinePtr;
	int result;
	LineList dirContents;
	int mlsd = 1, x;
	const char *item;

	FUNC0(gUnusedArg);
	FUNC4();
	while ((opt = FUNC3(argc, argv, "dt")) >= 0) {
		if ((opt == 'd') || (opt == 't')) {
			/* Use MLST instead of MLSD,
			 * which is similar to using "ls -d" instead of "ls".
			 */
			mlsd = 0;
		} else {
			FUNC5(cmdp);
			return;
		}
	}

	i = gOptInd;
	if (i == argc) {
		/* No args, do current directory. */
		x = 1;
		item = "";
		if ((result = FUNC1(&gConn, item, &dirContents, (mlsd == 0) ? "-d" : "", 1, &x)) < 0) {
			if (mlsd != 0) {
				FUNC2(&gConn, result, 0, "Could not MLSD", item);
			} else {
				FUNC2(&gConn, result, 0, "Could not MLST", item);
			}
		} else {
			for (linePtr = dirContents.first;
				linePtr != NULL;
				linePtr = nextLinePtr)
			{
				nextLinePtr = linePtr->next;
				(void) FUNC7(stdout, "%s\n", linePtr->line);
				FUNC6(0, "%s\n", linePtr->line);
			}
		}
	}

	for ( ; i<argc; i++) {
		x = 1;
		item = argv[i];
		if ((result = FUNC1(&gConn, item, &dirContents, (mlsd == 0) ? "-d" : "", 1, &x)) < 0) {
			if (mlsd != 0) {
				FUNC2(&gConn, result, 0, "Could not MLSD", item);
			} else {
				FUNC2(&gConn, result, 0, "Could not MLST", item);
			}
		} else {
			for (linePtr = dirContents.first;
				linePtr != NULL;
				linePtr = nextLinePtr)
			{
				nextLinePtr = linePtr->next;
				(void) FUNC7(stdout, "%s\n", linePtr->line);
				FUNC6(0, "%s\n", linePtr->line);
			}
		}
	}
}