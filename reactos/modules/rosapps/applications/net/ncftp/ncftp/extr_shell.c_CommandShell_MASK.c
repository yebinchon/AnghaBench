#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  prompt ;
typedef  int /*<<< orphan*/  ai ;
struct TYPE_7__ {scalar_t__ connected; int /*<<< orphan*/  host; } ;
struct TYPE_6__ {int /*<<< orphan*/  cargc; int /*<<< orphan*/  noglobargv; int /*<<< orphan*/  argbuf; int /*<<< orphan*/  cargv; } ;
typedef  TYPE_1__ ArgvInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BackToTop ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  MB_OK ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ SIGALRM ; 
 scalar_t__ SIGINT ; 
 scalar_t__ SIGPIPE ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  gBackToTopJmp ; 
 scalar_t__ gCancelCtrl ; 
 TYPE_3__ gConn ; 
 scalar_t__ gDoneApplication ; 
 int /*<<< orphan*/  gEventNumber ; 
 scalar_t__ gGotSig ; 
 int gMayBackToTopJmp ; 
 int gRunningCommand ; 
 scalar_t__ kBeepAfterCmdTime ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*) ; 

void
FUNC19(void)
{
	int tUsed, bUsed;
	ArgvInfo ai;
	char prompt[64];
	char *lineRead;
#if defined(WIN32) || defined(_WINDOWS)
#else
	int sj;
#endif
	time_t cmdStart, cmdStop;

	/* Execution may jump back to this point to restart the shell. */
#if defined(WIN32) || defined(_WINDOWS)

#elif defined(HAVE_SIGSETJMP)
	sj = sigsetjmp(gBackToTopJmp, 1);
#else	/* HAVE_SIGSETJMP */
	sj = FUNC15(gBackToTopJmp);
#endif	/* HAVE_SIGSETJMP */

#if defined(WIN32) || defined(_WINDOWS)
#else
	if (sj != 0) {
		FUNC10(0, "Caught signal %d, back at top.\n", gGotSig);
		if (gGotSig == SIGALRM) {
			(void) FUNC14("\nRemote host was not responding, closing down the session.");
			FUNC3(&gConn);
		} else{
			(void) FUNC14("\nInterrupted.\n");
			if (gCancelCtrl != 0) {
				gCancelCtrl = 0;
				(void) FUNC14("Closing down the current FTP session: ");
				FUNC3(&gConn);
				(void) FUNC17(1);
				(void) FUNC14("done.\n");
			}
		}
	}

	gMayBackToTopJmp = 1;
#endif


	++gEventNumber;

	while (gDoneApplication == 0) {
#if defined(WIN32) || defined(_WINDOWS)
#else
		(void) FUNC7(SIGINT, BackToTop);
		(void) FUNC7(SIGPIPE, BackToTop);
		(void) FUNC7(SIGALRM, BackToTop);
#endif

		FUNC5(prompt, sizeof(prompt));

		if (gConn.connected == 0) {
			FUNC9("DEFAULT");
		} else {
			FUNC9("%s - NcFTP", gConn.host);
		}

		lineRead = FUNC8(prompt);
		if (lineRead == NULL) {
			/* EOF, Control-D */
			(void) FUNC14("\n");
			break;
		}
		FUNC10(0, "> %s\n", lineRead);
		FUNC0(lineRead);
		for (tUsed = 0;;) {
			(void) FUNC13(&ai, 0, sizeof(ai));
			bUsed = FUNC4(lineRead + tUsed, &ai.cargc, ai.cargv,
				(int) (sizeof(ai.cargv) / sizeof(char *)),
				ai.argbuf, sizeof(ai.argbuf),
				ai.noglobargv, 0);
			if (bUsed <= 0)
				break;
			tUsed += bUsed;
			if (ai.cargc == 0)
				continue;
			gRunningCommand = 1;
			(void) FUNC18(&cmdStart);
			if (FUNC2(&ai) < 0) {
				(void) FUNC18(&cmdStop);
				gRunningCommand = 0;
				break;
			}
			(void) FUNC18(&cmdStop);
			gRunningCommand = 0;
			if ((cmdStop - cmdStart) > kBeepAfterCmdTime) {
				/* Let the user know that a time-consuming
				 * operation has completed.
				 */
#if defined(WIN32) || defined(_WINDOWS)
				MessageBeep(MB_OK);
#else
				(void) FUNC11(stderr, "\007");
#endif
			}
			++gEventNumber;
		}

		FUNC12(lineRead);
	}

	FUNC1();
	gMayBackToTopJmp = 0;
}