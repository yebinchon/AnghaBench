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
typedef  int /*<<< orphan*/  dsize ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const* const) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (char const* const) ; 
 int /*<<< orphan*/  FUNC12 (char* const,int /*<<< orphan*/ ,size_t) ; 

char *FUNC13(const char *const prompt, char *const pass, int dsize)
{
#ifdef __unix__
	char *cp;
	int c;

	FUNC12(pass, 0, (size_t) sizeof(dsize));
	dsize--;
	FUNC9();

	/* Display the prompt first. */
	if ((prompt != NULL) && (prompt[0] != '\0'))
		FUNC11(prompt);

	cp = pass;
	while ((c = FUNC8()) != (-1)) {
		if ((c == '\r') || (c == '\n'))
			break;
		if ((c == '\010') || (c == '\177'))	{
			/* ^H and DEL */
			if (cp > pass) {
				*--cp = '\0';
				FUNC10('\010');
				FUNC10(' ');
				FUNC10('\010');
			}
		} else if (cp < (pass + dsize)) {
			FUNC10('*');
			*cp++ = c;
		}
	}
	*cp = '\0';
	FUNC10('\n');
	FUNC7();
	return (pass);
#else
#ifdef __windows__
	char *cp;
	int c;

	FlushConsoleInputBuffer(GetStdHandle(STD_INPUT_HANDLE));
	ZeroMemory(pass, (DWORD) sizeof(dsize));
	dsize--;

	if ((prompt != NULL) && (prompt[0] != '\0'))
		_cputs(prompt);

	for (cp = pass;;) {
		c = (int) _getch();
		if ((c == '\r') || (c == '\n'))
			break;
		if ((c == '\010') || (c == '\177'))	{
			/* ^H and DEL */
			if (cp > pass) {
				*--cp = '\0';
				_putch('\010');
				_putch(' ');
				_putch('\010');
			}
		} else if (cp < (pass + dsize)) {
			_putch('*');
			*cp++ = c;
		}
	}
	_putch('\r');
	_putch('\n');
	Sleep(40);
	FlushConsoleInputBuffer(GetStdHandle(STD_INPUT_HANDLE));

	*cp = '\0';
	return (pass);
#endif	/* __windows__ */
#endif	/* ! __unix__ */
}