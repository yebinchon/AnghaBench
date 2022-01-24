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
typedef  int /*<<< orphan*/  pwbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const* const,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const* const) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

char *
FUNC9(const char *const prompt)
{
#ifdef HAVE_GETPASS
	return getpass(prompt);
#elif defined(_CONSOLE) && (defined(WIN32) || defined(_WINDOWS))
	static char pwbuf[128];
	char *dst, *dlim;
	int c;

	(void) memset(pwbuf, 0, sizeof(pwbuf));
	if (! _isatty(_fileno(stdout)))
		return (pwbuf);
	(void) fputs(prompt, stdout);
	(void) fflush(stdout);

	for (dst = pwbuf, dlim = dst + sizeof(pwbuf) - 1;;) {
		c = _getch();
		if ((c == 0) || (c == 0xe0)) {
			/* The key is a function or arrow key; read and discard. */
			(void) _getch();
		}
		if ((c == '\r') || (c == '\n'))
			break;
		if (dst < dlim)
			*dst++ = c;
	}
	*dst = '\0';

	(void) fflush(stdout);
	(void) fflush(stdin);
	return (pwbuf);
#else
	static char pwbuf[128];

	(void) FUNC8(pwbuf, 0, sizeof(pwbuf));
#if defined(WIN32) || defined(_WINDOWS)
	if (! _isatty(_fileno(stdout)))
#else
	if (! FUNC7(1))
#endif
		return (pwbuf);
	(void) FUNC5(prompt, stdout);
	(void) FUNC4(stdout);
	(void) FUNC0(pwbuf, sizeof(pwbuf), stdin);
	(void) FUNC4(stdout);
	(void) FUNC4(stdin);
	return (pwbuf);
#endif
}