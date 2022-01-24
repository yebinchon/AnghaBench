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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  JS_STRICT ; 
 int /*<<< orphan*/  PS1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jsB_compile ; 
 int /*<<< orphan*/  jsB_gc ; 
 int /*<<< orphan*/  jsB_load ; 
 int /*<<< orphan*/  jsB_print ; 
 int /*<<< orphan*/  jsB_quit ; 
 int /*<<< orphan*/  jsB_read ; 
 int /*<<< orphan*/  jsB_readline ; 
 int /*<<< orphan*/  jsB_repr ; 
 int /*<<< orphan*/  jsB_write ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char) ; 
 char* FUNC15 () ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 char* require_js ; 
 int /*<<< orphan*/  FUNC17 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rl_insert ; 
 char* stacktrace_js ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (int,char**,char*) ; 
 int xoptind ; 

int
FUNC21(int argc, char **argv)
{
	char *input;
	js_State *J;
	int status = 0;
	int strict = 0;
	int interactive = 0;
	int i, c;

	while ((c = FUNC20(argc, argv, "is")) != -1) {
		switch (c) {
		default: FUNC18(); break;
		case 'i': interactive = 1; break;
		case 's': strict = 1; break;
		}
	}

	J = FUNC10(NULL, NULL, strict ? JS_STRICT : 0);

	FUNC9(J, jsB_gc, "gc", 0);
	FUNC12(J, "gc");

	FUNC9(J, jsB_load, "load", 1);
	FUNC12(J, "load");

	FUNC9(J, jsB_compile, "compile", 2);
	FUNC12(J, "compile");

	FUNC9(J, jsB_print, "print", 0);
	FUNC12(J, "print");

	FUNC9(J, jsB_write, "write", 0);
	FUNC12(J, "write");

	FUNC9(J, jsB_read, "read", 1);
	FUNC12(J, "read");

	FUNC9(J, jsB_readline, "readline", 0);
	FUNC12(J, "readline");

	FUNC9(J, jsB_repr, "repr", 0);
	FUNC12(J, "repr");

	FUNC9(J, jsB_quit, "quit", 1);
	FUNC12(J, "quit");

	FUNC5(J, require_js);
	FUNC5(J, stacktrace_js);

	if (xoptind == argc) {
		interactive = 1;
	} else {
		c = xoptind++;

		FUNC8(J);
		i = 0;
		while (xoptind < argc) {
			FUNC11(J, argv[xoptind++]);
			FUNC13(J, -2, i++);
		}
		FUNC12(J, "scriptArgs");

		if (FUNC4(J, argv[c]))
			status = 1;
	}

	if (interactive) {
		if (FUNC3(0)) {
			FUNC19();
			FUNC17('\t', rl_insert);
			input = FUNC16(PS1);
			while (input) {
				FUNC1(J, input);
				if (*input)
					FUNC0(input);
				FUNC2(input);
				input = FUNC16(PS1);
			}
			FUNC14('\n');
		} else {
			input = FUNC15();
			if (!input || !FUNC5(J, input))
				status = 1;
			FUNC2(input);
		}
	}

	FUNC7(J, 0);
	FUNC6(J);

	return status;
}