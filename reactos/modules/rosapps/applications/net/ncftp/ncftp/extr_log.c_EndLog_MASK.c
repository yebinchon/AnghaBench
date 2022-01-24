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
typedef  int /*<<< orphan*/  tmpLog ;
struct Stat {scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_READ_TEXT ; 
 int /*<<< orphan*/  FOPEN_WRITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 scalar_t__ FUNC1 (char*,struct Stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 char* gLogFileName ; 
 double gMaxLogSize ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*) ; 

void
FUNC10(void)
{
	FILE *new, *old;
	struct Stat st;
	long fat;
	char str[512];
	char tmpLog[256];

	if (gOurDirectoryPath[0] == '\0')
		return;		/* Don't create in root directory. */

	/* If the user wants to, s/he can specify the maximum size of the log file,
	 * so it doesn't waste too much disk space.  If the log is too fat, trim the
	 * older lines (at the top) until we're under the limit.
	 */
	if ((gMaxLogSize <= 0) || (FUNC1(gLogFileName, &st) < 0))
		return;						   /* Never trim, or no log. */

	if ((size_t)st.st_size < (size_t)gMaxLogSize)
		return;						   /* Log size not over limit yet. */

	if ((old = FUNC4(gLogFileName, FOPEN_READ_TEXT)) == NULL)
		return;

	/* Want to make it so we're about 30% below capacity.
	 * That way we won't trim the log each time we run the program.
	 */
	fat = (long) st.st_size - (long) gMaxLogSize + (long) (0.30 * gMaxLogSize);
	while (fat > 0L) {
		if (FUNC3(str, (int) sizeof(str), old) == NULL)
			return;
		fat -= (long) FUNC9(str);
	}
	/* skip lines until a new site was opened */
	for (;;) {
		if (FUNC3(str, (int) sizeof(str), old) == NULL) {
			(void) FUNC2(old);
			(void) FUNC7(gLogFileName);
			return;					   /* Nothing left, start anew next time. */
		}
		if (! FUNC6(*str))
			break;
	}

	/* Copy the remaining lines in "old" to "new" */
	FUNC0(tmpLog, sizeof(tmpLog), "log.tmp");
	if ((new = FUNC4(tmpLog, FOPEN_WRITE_TEXT)) == NULL) {
		(void) FUNC2(old);
		return;
	}
	(void) FUNC5(str, new);
	while (FUNC3(str, (int) sizeof(str), old) != NULL)
		(void) FUNC5(str, new);
	(void) FUNC2(old);
	(void) FUNC2(new);
	if (FUNC7(gLogFileName) < 0)
		return;
	if (FUNC8(tmpLog, gLogFileName) < 0)
		return;
}