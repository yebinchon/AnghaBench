#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int goto_lineno; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int NCURSES_VERSION ; 
 int /*<<< orphan*/  NCURSES_VERSION_PATCH ; 
 int REQ_VIEW_BLAME ; 
 int REQ_VIEW_DIFF ; 
 int REQ_VIEW_GREP ; 
 int REQ_VIEW_LOG ; 
 int REQ_VIEW_MAIN ; 
 int REQ_VIEW_PAGER ; 
 int REQ_VIEW_REFLOG ; 
 int REQ_VIEW_REFS ; 
 int REQ_VIEW_STASH ; 
 int REQ_VIEW_STATUS ; 
 char* TIG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char const***,char const*) ; 
 TYPE_1__ argv_env ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 char* rl_library_version ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int) ; 
 char* usage_string ; 

__attribute__((used)) static enum request
FUNC11(int argc, const char *argv[], bool pager_mode)
{
	enum request request;
	const char *subcommand;
	bool seen_dashdash = false;
	bool rev_parse = true;
	const char **filter_argv = NULL;
	int i;

	request = pager_mode ? REQ_VIEW_PAGER : REQ_VIEW_MAIN;

	/* Options that must come before any subcommand. */
	for (i = 1; i < argc; i++) {
		const char *opt = argv[i];
		if (!FUNC10(opt, "-C", 2)) {
			if (FUNC2(opt + 2))
				FUNC3("Failed to change directory to %s", opt + 2);
			continue;
		} else {
			break;
		}
	}

	if (i >= argc)
		return request;

	subcommand = argv[i++];
	if (!FUNC7(subcommand, "status")) {
		request = REQ_VIEW_STATUS;

	} else if (!FUNC7(subcommand, "blame")) {
		request = REQ_VIEW_BLAME;

	} else if (!FUNC7(subcommand, "grep")) {
		request = REQ_VIEW_GREP;
		rev_parse = false;

	} else if (!FUNC7(subcommand, "show")) {
		request = REQ_VIEW_DIFF;

	} else if (!FUNC7(subcommand, "log")) {
		request = REQ_VIEW_LOG;

	} else if (!FUNC7(subcommand, "reflog")) {
		request = REQ_VIEW_REFLOG;

	} else if (!FUNC7(subcommand, "stash")) {
		request = REQ_VIEW_STASH;

	} else if (!FUNC7(subcommand, "refs")) {
		request = REQ_VIEW_REFS;
		rev_parse = false;

	} else {
		subcommand = NULL;
		i--; /* revisit option in loop below */
	}

	for (; i < argc; i++) {
		const char *opt = argv[i];

		// stop parsing our options after -- and let rev-parse handle the rest
		if (!seen_dashdash) {
			if (!FUNC7(opt, "--")) {
				seen_dashdash = true;

			} else if (!FUNC7(opt, "-v") || !FUNC7(opt, "--version")) {
				FUNC6("tig version %s\n", TIG_VERSION);
#ifdef NCURSES_VERSION
				printf("%s version %s.%d\n",
#ifdef NCURSES_WIDECHAR
				       "ncursesw",
#else
				       "ncurses",
#endif
				       NCURSES_VERSION, NCURSES_VERSION_PATCH);
#endif
#ifdef HAVE_READLINE
				printf("readline version %s\n", rl_library_version);
#endif
				FUNC4(EXIT_SUCCESS);

			} else if (!FUNC7(opt, "-h") || !FUNC7(opt, "--help")) {
				FUNC6("%s\n", usage_string);
				FUNC4(EXIT_SUCCESS);

			} else if (FUNC9(opt) >= 2 && *opt == '+' && FUNC8(opt + 1)) {
				int lineno = FUNC1(opt + 1);

				argv_env.goto_lineno = lineno > 0 ? lineno - 1 : 0;
				continue;

			}
		}

		if (!FUNC0(&filter_argv, opt))
			FUNC3("command too long");
	}

	if (filter_argv)
		FUNC5(filter_argv, rev_parse);

	return request;
}