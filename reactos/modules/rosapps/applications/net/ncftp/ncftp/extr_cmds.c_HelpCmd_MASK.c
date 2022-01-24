#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmdnames ;
struct TYPE_9__ {char* name; int flags; } ;
typedef  TYPE_1__* CommandPtr ;
typedef  int /*<<< orphan*/  ArgvInfoPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*) ; 
 TYPE_1__* gCommands ; 
 int gNumCommands ; 
 int /*<<< orphan*/  gUnusedArg ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__* kAmbiguousCommand ; 
 int kCmdHidden ; 
 TYPE_1__* kNoCommand ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 

void
FUNC13(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
	CommandPtr c;
	int showall = 0, helpall = 0;
	int i, j, k, n;
	int nRows, nCols;
	int nCmds2Print;
	int screenColumns;
	int len, widestName;
	char *cp, spec[16];
	const char *cmdnames[64];

	FUNC0(gUnusedArg);
	FUNC4(gNumCommands < (sizeof(cmdnames) / sizeof(char *)));
	if (argc == 2) {
		showall = (FUNC11(argv[1], "showall") == 0);
		helpall = (FUNC11(argv[1], "helpall") == 0);
	}
	if (argc == 1 || showall) {
		(void) FUNC9("\
Commands may be abbreviated.  'help showall' shows hidden and unsupported \n\
commands.  'help <command>' gives a brief description of <command>.\n\n");

		/* First, see how many commands we will be printing to the screen.
		 * Unless 'showall' was given, we won't be printing the hidden
		 * (i.e. not very useful to the end-user) commands.
		 */
		c = gCommands;
		nCmds2Print = 0;
		for (n = 0; n < (int) gNumCommands; c++, n++)
			if ((!FUNC7((int) c->name[0])) && (!(c->flags & kCmdHidden) || showall))
				nCmds2Print++;

		(void) FUNC8((char *) cmdnames, 0, sizeof(cmdnames));

		/* Now form the list we'll be printing, and noting what the maximum
		 * length of a command name was, so we can use that when determining
		 * how to print in columns.
		 */
		c = gCommands;
		i = 0;
		widestName = 0;
		for (n = 0; n < (int) gNumCommands; c++, n++) {
			if ((!FUNC7((int) c->name[0])) && (!(c->flags & kCmdHidden) || showall)) {
				cmdnames[i++] = c->name;
				len = (int) FUNC12(c->name);
				if (len > widestName)
					widestName = len;
			}
		}

		if ((cp = (char *) FUNC6("COLUMNS")) == NULL)
			screenColumns = 80;
		else
			screenColumns = FUNC5(cp);

		/* Leave an extra bit of whitespace for the margins between columns. */
		widestName += 2;

		nCols = (screenColumns + 0) / widestName;
		nRows = nCmds2Print / nCols;
		if ((nCmds2Print % nCols) > 0)
			nRows++;

		for (i = 0; i < nRows; i++) {
			for (j = 0; j < nCols; j++) {
				k = nRows * j + i;
				if (k < nCmds2Print) {
					(void) FUNC10(spec, "%%-%ds",
						(j < nCols - 1) ? widestName : widestName - 2
					);
					(void) FUNC9(spec, cmdnames[k]);
				}
			}
			(void) FUNC9("\n");
		}
	} else if (helpall) {
		/* Really intended for me, so I can debug the help strings. */
		for (c = gCommands, n = 0; n < (int) gNumCommands; c++, n++) {
			FUNC2(c);
			FUNC3(c);
		}
	} else {
		/* For each command name specified, print its help stuff. */
		for (i=1; i<argc; i++) {
			c = FUNC1(argv[i], 0);
			if (c == kAmbiguousCommand) {
				(void) FUNC9("%s: ambiguous command name.\n", argv[i]);
			} else if (c == kNoCommand) {
				(void) FUNC9("%s: no such command.\n", argv[i]);
			} else {
				if (i > 1)
					(void) FUNC9("\n");
				FUNC2(c);
				FUNC3(c);
			}
		}
	}
}