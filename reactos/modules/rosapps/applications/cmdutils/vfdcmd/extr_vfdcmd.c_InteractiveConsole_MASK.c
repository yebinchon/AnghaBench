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
typedef  int /*<<< orphan*/  input ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSG_CONSOLE_HINT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int VFD_OK ; 
 int /*<<< orphan*/  VFD_PRODUCT_DESC ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char**,int) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (char*,int,int /*<<< orphan*/ ) ; 
 char* help_progname ; 
 scalar_t__ FUNC15 (char) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char) ; 

int FUNC20()
{
	char		input[1024];	//	user input buffer

	int			argc;			//	number of args in the user input
	char		*args[10];		//	args to pass to command functions

	char		sepa;			//	argument separator
	char		*p;				//	work pointer

	//	Disable the system default Ctrl+C handler

	FUNC5(NULL, TRUE);

	//	Set the console title

	FUNC6(VFD_PRODUCT_DESC);

	//	print version information and the console hint text

	FUNC9(NULL);

	FUNC3(MSG_CONSOLE_HINT);

	//	set interactive flag to exclude "VFD.EXE" from help text

	help_progname = "";

	//	process user input

	for (;;) {

		//	print the prompt

		FUNC16("[VFD] ");
		FUNC13(stdout);

		//	read user input

		FUNC13(stdin);
		p = FUNC14(input, sizeof(input), stdin);

		if (p == NULL) {

			//	most likely <ctrl+c>

			FUNC16("exit\n");
			break;
		}

		//	skip leading blank characters

		while (*p == ' ' || *p == '\t' || *p == '\n') {
			p++;
		}
		
		if (*p == '\0') {

			//	empty input

			continue;
		}

		//	handle external commands

		if (!FUNC12(p, "dir", 3) ||
			!FUNC12(p, "attrib", 6)) {

			//	special cases - frequently used commands
			//	pass these to system() even without '.'

			FUNC18(p);
			FUNC16("\n");
			continue;
		}
		else if (*p == '.') {

			//	external command

			FUNC18(p + 1);
			FUNC16("\n");
			continue;
		}

		//	split the input line into parameters (10 parameters max)

		argc = 0;
		FUNC10(args, sizeof(args));

		do {
			//	top of a parameter

			args[argc++] = p;

			//	is the parameter quoted?

			if (*p == '\"' || *p == '\'') {
				sepa = *(p++);
			}
			else {
				sepa = ' ';
			}

			//	search the end of the parameter

			while (*p && *p != '\n') {
				if (sepa == ' ') {
					if (*p == '\t' || *p == ' ') {
						break;			//	tail of a non-quoted parameter
					}
				}
				else {
					if (*p == sepa) {
						sepa = ' ';		//	close quote
					}
				}
				p++;
			}

			//	terminate the parameter

			if (*p) {
				*(p++) = '\0';
			}

			//	skip trailing blank characters

			while (*p == ' ' || *p == '\t' || *p == '\n') {
				p++;
			}

			if (*p == '\0') {

				//	end of the input line - no more args

				break;
			}
		}
		while (argc < sizeof(args) / sizeof(args[0]));

		//	check the first parameter for special commands

		if (!FUNC11(args[0], "exit") ||
			!FUNC11(args[0], "quit") ||
			!FUNC11(args[0], "bye")) {

			//	exit command

			break;
		}
		else if (!FUNC11(args[0], "cd") ||
			!FUNC11(args[0], "chdir")) {

			//	internal change directory command

			if (args[1]) {
				char path[MAX_PATH];
				int i;

				//	ignore the /d option (of the standard cd command)

				if (FUNC11(args[1], "/d")) {
					i = 1;
				}
				else {
					i = 2;
				}

				p = args[i];

				if (*p == '\"' || *p == '\'') {

					//	the parameter is quoted -- remove quotations

					p++;

					while (*p && *p != *args[i]) {
						p++;
					}

					args[i]++;		// skip a leading quote
					*p = '\0';		// remove a trailing quote
				}
				else {

					//	the parameter is not quoted
					//	-- concatenate params to allow spaces in unquoted path

					while (i < argc - 1) {
						*(args[i] + FUNC17(args[i])) = ' ';
						i++;
					}
				}

				//	Match the case of the path to the name on the disk
				
				FUNC0(p, path);

				if (!FUNC7(path)) {
					DWORD ret = FUNC2();

					if (ret == ERROR_FILE_NOT_FOUND) {
						ret = ERROR_PATH_NOT_FOUND;
					}

					FUNC16("%s", FUNC8(ret));
				}
			}
			else {
				if (!FUNC1(sizeof(input), input)) {
					FUNC16("%s", FUNC8(FUNC2()));
				}
				else {
					FUNC16("%s\n", input);
				}
			}
		}
		else if (FUNC15(*args[0]) &&
			*(args[0] + 1) == ':' &&
			*(args[0] + 2) == '\0') {

			//	internal change drive command

			*args[0] = (char)FUNC19(*args[0]);
			*(args[0] + 2) = '\\';
			*(args[0] + 3) = '\0';

			if (!FUNC7(args[0])) {
				FUNC16("%s", FUNC8(FUNC2()));
			}
		}
		else {

			//	perform the requested VFD command

			FUNC4(argc, (const char **)args);
		}

		FUNC16("\n");
	}
	
	return VFD_OK;
}