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
typedef  int /*<<< orphan*/  FTPSigProc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPOLL ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int gIsTTY ; 
 int gIsTTYr ; 
 int /*<<< orphan*/  gLib ; 
 int /*<<< orphan*/  gStartupURLCdList ; 
 scalar_t__ FUNC21 () ; 
 int FUNC22 () ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  wsaData ; 
 int /*<<< orphan*/  wsaInit ; 

__attribute__((used)) static void
FUNC26(void)
{
	int result;

#if defined(WIN32) || defined(_WINDOWS)
	if (WSAStartup(MAKEWORD(1, 1), &wsaData) != 0) {
		fprintf(stderr, "could not initialize winsock\n");
		exit(1);
	}
	wsaInit++;
#endif

#ifdef HAVE_SETLOCALE
	setlocale(LC_ALL, "");
#endif
#if defined(WIN32) || defined(_WINDOWS)
	gIsTTY = 1;
	gIsTTYr = 1;
#else
	gIsTTY = ((FUNC23(2) != 0) && (FUNC22() > 1)) ? 1 : 0;
	gIsTTYr = ((FUNC23(0) != 0) && (FUNC22() > 1)) ? 1 : 0;
#endif
#ifdef SIGPOLL
	(void) NcSignal(SIGPOLL, (FTPSigProc) SIG_IGN);
#endif
	FUNC12();
	result = FUNC1(&gLib);
	if (result < 0) {
		(void) FUNC20(stderr, "ncftp: init library error %d (%s).\n", result, FUNC2(result));
		FUNC19(1);
	}
#if defined(WIN32) || defined(_WINDOWS)
	srand((unsigned int) (GetTickCount() & 0x7FFF));
#else
	FUNC25((unsigned int) FUNC21());
#endif
	FUNC8(&gStartupURLCdList);
	FUNC0();
	FUNC9();
	FUNC11();
	FUNC13(0);
	FUNC14();
	FUNC7();
	FUNC6();
	FUNC10();
	FUNC17();
	FUNC5();
	FUNC3();
}