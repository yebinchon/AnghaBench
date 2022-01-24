#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* string ;
typedef  int /*<<< orphan*/  longstring ;
typedef  int /*<<< orphan*/  gfile ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {int errNo; } ;
typedef  int /*<<< orphan*/  LineListPtr ;
typedef  int /*<<< orphan*/  FTPSigProc ;
typedef  TYPE_1__* FTPCIPtr ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  kDoPerror ; 
 int kErrGlobFailed ; 
 int kNoErr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*,char*,char const* const) ; 

__attribute__((used)) static int
FUNC9(FTPCIPtr cip, LineListPtr fileList, const char *const pattern)
{
	string cmd;
	longstring gfile;
	FILE *fp;
	FTPSigProc sp;

	/* Do it the easy way and have the shell do the dirty
	 * work for us.
	 */
#ifdef HAVE_SNPRINTF
	(void) snprintf(cmd, sizeof(cmd) - 1, "%s -c \"%s %s %s\"", "/bin/sh", "/bin/ls",
		"-d", pattern);
	cmd[sizeof(cmd) - 1] = '\0';
#else
	(void) FUNC8(cmd, "%s -c \"%s %s %s\"", "/bin/sh", "/bin/ls",
		"-d", pattern);
#endif

	fp = (FILE *) FUNC6(cmd, "r");
	if (fp == NULL) {
		FUNC1(cip, kDoPerror, "Could not Lglob: [%s]\n", cmd);
		cip->errNo = kErrGlobFailed;
		return (kErrGlobFailed);
	}
	sp = FUNC3(SIGPIPE, (FTPSigProc) SIG_IGN);
	while (FUNC2(gfile, sizeof(gfile), (FILE *) fp) != NULL) {
		FUNC4(cip, "  Lglob [%s]\n", gfile);
		(void) FUNC0(fileList, gfile);
	}
	(void) FUNC5(fp);
	(void) FUNC3(SIGPIPE, sp);
	return (kNoErr);
}