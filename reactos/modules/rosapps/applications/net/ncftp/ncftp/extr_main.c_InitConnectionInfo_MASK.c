#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* host; int leavePass; int maxDials; int redialDelay; char* asciiFilenameExtensions; int /*<<< orphan*/  dataSocketSBufSize; int /*<<< orphan*/  dataSocketRBufSize; int /*<<< orphan*/  dataPortMode; int /*<<< orphan*/  ctrlTimeout; int /*<<< orphan*/  xferTimeout; int /*<<< orphan*/  connTimeout; int /*<<< orphan*/ * progress; int /*<<< orphan*/  user; int /*<<< orphan*/  errLog; int /*<<< orphan*/ * debugLog; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*) ; 
 char* gAutoAscii ; 
 TYPE_1__ gConn ; 
 int /*<<< orphan*/  gConnTimeout ; 
 int /*<<< orphan*/  gCtrlTimeout ; 
 int /*<<< orphan*/  gDataPortMode ; 
 int /*<<< orphan*/  gDebug ; 
 int /*<<< orphan*/  gLib ; 
 char* gPrevRemoteCWD ; 
 int gRedialDelay ; 
 int /*<<< orphan*/  gSOBufsize ; 
 int /*<<< orphan*/  gTransferType ; 
 scalar_t__ gTransferTypeInitialized ; 
 scalar_t__ gUnprocessedJobs ; 
 int /*<<< orphan*/  gXferTimeout ; 
 int /*<<< orphan*/  kDefaultFTPBufSize ; 
 int /*<<< orphan*/  kTypeBinary ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC8(void)
{
	int result;

	result = FUNC0(&gLib, &gConn, kDefaultFTPBufSize);
	if (result < 0) {
		(void) FUNC7(stderr, "ncftp: init connection info error %d (%s).\n", result, FUNC1(result));
		FUNC6(1);
	}

	gConn.debugLog = NULL;
	gConn.errLog = stderr;
	FUNC4(gDebug);
	FUNC5();
	(void) FUNC3(gConn.user, "anonymous");
	gConn.host[0] = '\0';
	gConn.progress = NULL;
	gTransferTypeInitialized = 0;
	gTransferType = kTypeBinary;
	gConn.leavePass = 1;		/* Don't let the lib zap it. */
	gConn.connTimeout = gConnTimeout;
	gConn.xferTimeout = gXferTimeout;
	gConn.ctrlTimeout = gCtrlTimeout;
	gConn.dataPortMode = gDataPortMode;
	gConn.maxDials = (-1);	/* Dial forever, until they hit ^C. */
	gUnprocessedJobs = 0;
	gPrevRemoteCWD[0] = '\0';
	gConn.dataSocketRBufSize = gConn.dataSocketSBufSize = gSOBufsize;
	if (gRedialDelay >= 10)
		gConn.redialDelay = gRedialDelay;
	if ((gAutoAscii[0] == '\0') || (FUNC2(gAutoAscii, "no")) || (FUNC2(gAutoAscii, "off")) || (FUNC2(gAutoAscii, "false"))) {
		gConn.asciiFilenameExtensions = NULL;
	} else {
		gConn.asciiFilenameExtensions = gAutoAscii;
	}
}