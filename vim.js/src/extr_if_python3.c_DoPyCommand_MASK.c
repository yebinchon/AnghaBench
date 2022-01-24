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
typedef  int /*<<< orphan*/  (* runner ) (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  (* rangeinitializer ) (void*) ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyGILState_STATE ;
typedef  scalar_t__ Ptr ;
typedef  int /*<<< orphan*/  GrafPtr ;

/* Variables and functions */
 int /*<<< orphan*/  CODEC_ERROR_HANDLER ; 
 scalar_t__ ENC_OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PyMac_Initialize ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ kUnresolvedCFragSymbolAddress ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(const char *cmd, rangeinitializer init_range, runner run, void *arg)
{
#if defined(MACOS) && !defined(MACOS_X_UNIX)
    GrafPtr		oldPort;
#endif
#if defined(HAVE_LOCALE_H) || defined(X_LOCALE)
    char		*saved_locale;
#endif
    PyObject		*cmdstr;
    PyObject		*cmdbytes;
    PyGILState_STATE	pygilstate;

#if defined(MACOS) && !defined(MACOS_X_UNIX)
    GetPort(&oldPort);
    /* Check if the Python library is available */
    if ((Ptr)PyMac_Initialize == (Ptr)kUnresolvedCFragSymbolAddress)
	goto theend;
#endif
    if (FUNC7())
	goto theend;

    init_range(arg);

    FUNC10();	    /* leave vim */

#if defined(HAVE_LOCALE_H) || defined(X_LOCALE)
    /* Python only works properly when the LC_NUMERIC locale is "C". */
    saved_locale = setlocale(LC_NUMERIC, NULL);
    if (saved_locale == NULL || STRCMP(saved_locale, "C") == 0)
	saved_locale = NULL;
    else
    {
	/* Need to make a copy, value may change when setting new locale. */
	saved_locale = (char *)vim_strsave((char_u *)saved_locale);
	(void)setlocale(LC_NUMERIC, "C");
    }
#endif

    pygilstate = FUNC2();

    /* PyRun_SimpleString expects a UTF-8 string. Wrong encoding may cause
     * SyntaxError (unicode error). */
    cmdstr = FUNC5(cmd, FUNC14(cmd),
					(char *)ENC_OPT, CODEC_ERROR_HANDLER);
    cmdbytes = FUNC4(cmdstr, "utf-8", CODEC_ERROR_HANDLER);
    FUNC6(cmdstr);

    run(FUNC1(cmdbytes), arg, &pygilstate);
    FUNC6(cmdbytes);

    FUNC3(pygilstate);

#if defined(HAVE_LOCALE_H) || defined(X_LOCALE)
    if (saved_locale != NULL)
    {
	(void)setlocale(LC_NUMERIC, saved_locale);
	vim_free(saved_locale);
    }
#endif

    FUNC9();		    /* enter vim */
    FUNC8();
#if defined(MACOS) && !defined(MACOS_X_UNIX)
    SetPort(oldPort);
#endif

theend:
    return;	    /* keeps lint happy */
}