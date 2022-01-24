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
struct TYPE_2__ {int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_STATUS ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TABSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int cursed ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  done_display ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_mouse ; 
 int /*<<< orphan*/  opt_tab_size ; 
 TYPE_1__ opt_tty ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  status_win ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int use_scroll_redrawwin ; 
 int use_scroll_status_wclear ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC17(void)
{
	bool no_display = !!FUNC5("TIG_NO_DISPLAY");
	const char *term;
	int x, y;

	if (!opt_tty.file)
		FUNC1("Can't initialize display without tty");

	if (FUNC0(done_display))
		FUNC1("Failed to register done_display");

	/* Initialize the curses library */
	if (!no_display && FUNC9(STDIN_FILENO)) {
		/* Needed for ncurses 5.4 compatibility. */
		cursed = !!FUNC8();
	} else {
		/* Leave stdin and stdout alone when acting as a pager. */
		FILE *out_tty;

		out_tty = no_display ? FUNC3("/dev/null", "w+") : opt_tty.file;
		if (!out_tty)
			FUNC1("Failed to open tty for output");
		cursed = !!FUNC11(NULL, out_tty, opt_tty.file);
	}

	if (!cursed)
		FUNC1("Failed to initialize curses");

	FUNC14();
	FUNC7();

	FUNC6(stdscr, y, x);
	status_win = FUNC12(1, x, y - 1, 0);
	if (!status_win)
		FUNC1("Failed to create status window");

	/* Enable keyboard mapping */
	FUNC10(status_win, true);
	FUNC16(status_win, FUNC4(NULL, LINE_STATUS));
	FUNC2(opt_mouse);

#if defined(NCURSES_VERSION_PATCH) && (NCURSES_VERSION_PATCH >= 20080119)
	set_tabsize(opt_tab_size);
#else
	TABSIZE = opt_tab_size;
#endif

	term = FUNC5("XTERM_VERSION")
		   ? NULL
		   : (FUNC5("TERM_PROGRAM") ? FUNC5("TERM_PROGRAM") : FUNC5("COLORTERM"));
	if (term && !FUNC15(term, "gnome-terminal")) {
		/* In the gnome-terminal-emulator, the warning message
		 * shown when scrolling up one line while the cursor is
		 * on the first line followed by scrolling down one line
		 * corrupts the status line. This is fixed by calling
		 * wclear. */
		use_scroll_status_wclear = true;
		use_scroll_redrawwin = false;

	} else if (term &&
			   (!FUNC15(term, "xrvt-xpm") || !FUNC15(term, "Apple_Terminal") ||
				!FUNC15(term, "iTerm.app"))) {
		/* No problems with full optimizations in
		 * xrvt-(unicode)
		 * aterm
		 * Terminal.app
		 * iTerm2 */
		use_scroll_status_wclear = use_scroll_redrawwin = false;

	} else {
		/* When scrolling in (u)xterm the last line in the
		 * scrolling direction will update slowly.  This is
		 * the conservative default. */
		use_scroll_redrawwin = true;
		use_scroll_status_wclear = false;
	}
}