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
struct view {int /*<<< orphan*/  keymap; } ;
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_2__ {int /*<<< orphan*/ * git_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODESET ; 
 char* ENCODING_UTF8 ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 scalar_t__ ICONV_NONE ; 
 int /*<<< orphan*/  ICONV_TRANSLIT ; 
 int /*<<< orphan*/  LC_ALL ; 
 int REQ_NONE ; 
#define  REQ_PROMPT 129 
#define  REQ_UNKNOWN 128 
 int /*<<< orphan*/  REQ_VIEW_HELP ; 
 int REQ_VIEW_PAGER ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGSEGV ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int SIZEOF_STR ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t current_view ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct view** display ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct view*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  hangup_children ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int) ; 
 int FUNC17 (struct view*) ; 
 scalar_t__ opt_iconv_out ; 
 int FUNC18 (int,char const**,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_1__ repo ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sighup_handler ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigsegv_handler ; 
 scalar_t__ FUNC25 (char const*,char*) ; 
 scalar_t__ FUNC26 (char*,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct view*,int) ; 

int
FUNC28(int argc, const char *argv[])
{
	const char *codeset = ENCODING_UTF8;
	bool pager_mode = !FUNC10(STDIN_FILENO);
	enum request request = FUNC18(argc, argv, pager_mode);
	struct view *view;

	FUNC9();

	FUNC0(hangup_children);

	if (FUNC24(SIGPIPE, SIG_IGN) == SIG_ERR)
		FUNC1("Failed to setup signal handler");

	if (FUNC24(SIGHUP, sighup_handler) == SIG_ERR)
		FUNC1("Failed to setup signal handler");

#ifdef DEBUG
	if (signal(SIGSEGV, sigsegv_handler) == SIG_ERR)
		die("Failed to setup signal handler");
#endif

	if (FUNC23(LC_ALL, "")) {
		codeset = FUNC15(CODESET);
	}

	FUNC2(FUNC6(), "Failed to handle GIT_PREFIX");
	FUNC2(FUNC14(), "Failed to load repo info.");
	FUNC2(FUNC12(), "Failed to load user config.");
	FUNC2(FUNC11(), "Failed to load repo config.");

	FUNC19();

	/* Require a git repository unless when running in pager mode. */
	if (!repo.git_dir[0] && request != REQ_VIEW_PAGER)
		FUNC1("Not a git repository");

	if (codeset && FUNC25(codeset, ENCODING_UTF8)) {
		char translit[SIZEOF_STR];

		if (FUNC26(translit, "%s%s", codeset, ICONV_TRANSLIT))
			opt_iconv_out = FUNC7(translit, ENCODING_UTF8);
		else
			opt_iconv_out = FUNC7(codeset, ENCODING_UTF8);
		if (opt_iconv_out == ICONV_NONE)
			FUNC1("Failed to initialize character set conversion");
	}

	FUNC2(FUNC13(false), "Failed to load refs.");

	FUNC8();

	if (pager_mode)
		request = FUNC16(request);

	if (FUNC5("TIG_SCRIPT")) {
		const char *script_command[] = { "script", FUNC5("TIG_SCRIPT"), NULL };

		FUNC22(NULL, script_command);
	}

	while (FUNC27(display[current_view], request)) {
		view = display[current_view];
		request = FUNC20(view->keymap);

		/* Some low-level request handling. This keeps access to
		 * status_win restricted. */
		switch (request) {
		case REQ_UNKNOWN:
			FUNC21("Unknown key, press %s for help",
			       FUNC4(view, REQ_VIEW_HELP));
			request = REQ_NONE;
			break;
		case REQ_PROMPT:
			request = FUNC17(view);
			break;
		default:
			break;
		}
	}

	FUNC3(EXIT_SUCCESS);

	return 0;
}