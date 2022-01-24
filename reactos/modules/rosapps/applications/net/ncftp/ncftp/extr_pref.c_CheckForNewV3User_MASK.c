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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  pathName ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FOPEN_READ_TEXT ; 
 int /*<<< orphan*/  FOPEN_WRITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int gNumProgramRuns ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  gPrefsDirty ; 
 int /*<<< orphan*/  kFirstFileName ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*) ; 
 scalar_t__ FUNC6 (char*,struct stat*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

void
FUNC8(void)
{
	FILE *fp;
	struct stat st;
	char pathName[256];
	char line[256];

	gNumProgramRuns = 0;

	/* Don't create in root directory. */
	if (gOurDirectoryPath[0] != '\0') {
		(void) FUNC0(pathName, sizeof(pathName), kFirstFileName);

		if ((FUNC6(pathName, &st) < 0) && (errno == ENOENT)) {
			gNumProgramRuns = 1;
			gPrefsDirty++;

			/* Create a blank one. */
			fp = FUNC3(pathName, FOPEN_WRITE_TEXT);
			if (fp == NULL)
				return;
			(void) FUNC4(fp, "# NcFTP uses this file to mark that you have run it before, and that you do not\n# need any special first-time instructions or setup.\n#\nruns=%d\n", gNumProgramRuns);
			(void) FUNC1(fp);
		} else {
			fp = FUNC3(pathName, FOPEN_READ_TEXT);
			if (fp != NULL) {
				while (FUNC2(line, sizeof(line) - 1, fp) != NULL) {
					if (FUNC7(line, "runs=", 5) == 0) {
						(void) FUNC5(line + 5, "%d",
							&gNumProgramRuns);
						break;
					}
				}
				(void) FUNC1(fp);
			}

			/* Increment the count of program runs. */
			gNumProgramRuns++;
			if (gNumProgramRuns == 1)
				gPrefsDirty++;

			/* Race condition between other ncftp processes.
			 * This isn't a big deal because this counter isn't
			 * critical.
			 */

			fp = FUNC3(pathName, FOPEN_WRITE_TEXT);
			if (fp != NULL) {
				(void) FUNC4(fp, "# NcFTP uses this file to mark that you have run it before, and that you do not\n# need any special first-time instructions or setup.\n#\nruns=%d\n", gNumProgramRuns);
				(void) FUNC1(fp);
			}
		}
	}
}