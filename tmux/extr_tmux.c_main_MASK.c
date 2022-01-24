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
struct options_table_entry {int scope; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int CLIENT_256COLOURS ; 
 int CLIENT_CONTROL ; 
 int CLIENT_CONTROLCONTROL ; 
 int CLIENT_LOGIN ; 
 int CLIENT_UTF8 ; 
 int /*<<< orphan*/  CODESET ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_TIME ; 
 int MODEKEY_EMACS ; 
 int MODEKEY_VI ; 
 int OPTIONS_TABLE_SERVER ; 
 int OPTIONS_TABLE_SESSION ; 
 int OPTIONS_TABLE_WINDOW ; 
 char* VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char**,int) ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 int FUNC11 (int,char**,char*) ; 
 char* FUNC12 () ; 
 int FUNC13 () ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  global_environ ; 
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  global_s_options ; 
 int /*<<< orphan*/  global_w_options ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 (char*,char**) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 char const* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct options_table_entry const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char const*) ; 
 struct options_table_entry* options_table ; 
 int /*<<< orphan*/  FUNC22 () ; 
 scalar_t__ FUNC23 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,char*) ; 
 int ptm_fd ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ ,char*) ; 
 char const* shell_command ; 
 char* socket_path ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC27 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC28 (char const*,char*) ; 
 size_t FUNC29 (char*,char*) ; 
 char* FUNC30 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC31 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 char* FUNC34 (char const*) ; 

int
FUNC35(int argc, char **argv)
{
	char					*path, *label, *cause, **var;
	const char				*s, *shell, *cwd;
	int					 opt, flags, keys;
	const struct options_table_entry	*oe;

	if (FUNC26(LC_CTYPE, "en_US.UTF-8") == NULL &&
	    FUNC26(LC_CTYPE, "C.UTF-8") == NULL) {
		if (FUNC26(LC_CTYPE, "") == NULL)
			FUNC5(1, "invalid LC_ALL, LC_CTYPE or LANG");
		s = FUNC17(CODESET);
		if (FUNC27(s, "UTF-8") != 0 && FUNC27(s, "UTF8") != 0)
			FUNC5(1, "need UTF-8 locale (LC_CTYPE) but have %s", s);
	}

	FUNC26(LC_TIME, "");
	FUNC32();

	if (**argv == '-')
		flags = CLIENT_LOGIN;
	else
		flags = 0;

	label = path = NULL;
	while ((opt = FUNC11(argc, argv, "2c:Cdf:lL:qS:uUVv")) != -1) {
		switch (opt) {
		case '2':
			flags |= CLIENT_256COLOURS;
			break;
		case 'c':
			shell_command = optarg;
			break;
		case 'C':
			if (flags & CLIENT_CONTROL)
				flags |= CLIENT_CONTROLCONTROL;
			else
				flags |= CLIENT_CONTROL;
			break;
		case 'V':
			FUNC24("%s %s\n", FUNC12(), VERSION);
			FUNC6(0);
		case 'f':
			FUNC25(optarg);
			break;
		case 'l':
			flags |= CLIENT_LOGIN;
			break;
		case 'L':
			FUNC9(label);
			label = FUNC34(optarg);
			break;
		case 'q':
			break;
		case 'S':
			FUNC9(path);
			path = FUNC34(optarg);
			break;
		case 'u':
			flags |= CLIENT_UTF8;
			break;
		case 'v':
			FUNC15();
			break;
		default:
			FUNC33();
		}
	}
	argc -= optind;
	argv += optind;

	if (shell_command != NULL && argc != 0)
		FUNC33();

	if ((ptm_fd = FUNC13()) == -1)
		FUNC4(1, "getptmfd");
	if (FUNC23("stdio rpath wpath cpath flock fattr unix getpw sendfd "
	    "recvfd proc exec tty ps", NULL) != 0)
		FUNC4(1, "pledge");

	/*
	 * tmux is a UTF-8 terminal, so if TMUX is set, assume UTF-8.
	 * Otherwise, if the user has set LC_ALL, LC_CTYPE or LANG to contain
	 * UTF-8, it is a safe assumption that either they are using a UTF-8
	 * terminal, or if not they know that output from UTF-8-capable
	 * programs may be wrong.
	 */
	if (FUNC10("TMUX") != NULL)
		flags |= CLIENT_UTF8;
	else {
		s = FUNC10("LC_ALL");
		if (s == NULL || *s == '\0')
			s = FUNC10("LC_CTYPE");
		if (s == NULL || *s == '\0')
			s = FUNC10("LANG");
		if (s == NULL || *s == '\0')
			s = "";
		if (FUNC28(s, "UTF-8") != NULL ||
		    FUNC28(s, "UTF8") != NULL)
			flags |= CLIENT_UTF8;
	}

	global_environ = FUNC1();
	for (var = environ; *var != NULL; var++)
		FUNC2(global_environ, *var);
	if ((cwd = FUNC7()) != NULL)
		FUNC3(global_environ, "PWD", "%s", cwd);

	global_options = FUNC18(NULL);
	global_s_options = FUNC18(NULL);
	global_w_options = FUNC18(NULL);
	for (oe = options_table; oe->name != NULL; oe++) {
		if (oe->scope & OPTIONS_TABLE_SERVER)
			FUNC19(global_options, oe);
		if (oe->scope & OPTIONS_TABLE_SESSION)
			FUNC19(global_s_options, oe);
		if (oe->scope & OPTIONS_TABLE_WINDOW)
			FUNC19(global_w_options, oe);
	}

	/*
	 * The default shell comes from SHELL or from the user's passwd entry
	 * if available.
	 */
	shell = FUNC14();
	FUNC21(global_s_options, "default-shell", 0, "%s", shell);

	/* Override keys to vi if VISUAL or EDITOR are set. */
	if ((s = FUNC10("VISUAL")) != NULL || (s = FUNC10("EDITOR")) != NULL) {
		if (FUNC30(s, '/') != NULL)
			s = FUNC30(s, '/') + 1;
		if (FUNC31(s, "vi") != NULL)
			keys = MODEKEY_VI;
		else
			keys = MODEKEY_EMACS;
		FUNC20(global_s_options, "status-keys", keys);
		FUNC20(global_w_options, "mode-keys", keys);
	}

	/*
	 * If socket is specified on the command-line with -S or -L, it is
	 * used. Otherwise, $TMUX is checked and if that fails "default" is
	 * used.
	 */
	if (path == NULL && label == NULL) {
		s = FUNC10("TMUX");
		if (s != NULL && *s != '\0' && *s != ',') {
			path = FUNC34(s);
			path[FUNC29(path, ",")] = '\0';
		}
	}
	if (path == NULL && (path = FUNC16(label, &cause)) == NULL) {
		if (cause != NULL) {
			FUNC8(stderr, "%s\n", cause);
			FUNC9(cause);
		}
		FUNC6(1);
	}
	socket_path = path;
	FUNC9(label);

	/* Pass control to the client. */
	FUNC6(FUNC0(FUNC22(), argc, argv, flags));
}