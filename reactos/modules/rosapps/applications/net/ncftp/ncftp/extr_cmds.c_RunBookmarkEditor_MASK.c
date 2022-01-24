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
typedef  int /*<<< orphan*/  ncftpbookmarks ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  bmSelectionFile ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 char* BINDIR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ EINTR ; 
#define  ERROR_BAD_FORMAT 130 
#define  ERROR_FILE_NOT_FOUND 129 
#define  ERROR_PATH_NOT_FOUND 128 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FOPEN_READ_TEXT ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAILSLOT_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_OK ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 scalar_t__ FUNC15 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC16 (char*,char**) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* gOurDirectoryPath ; 
 char* gOurInstallationPath ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  kNcFTPBookmarksMailslot ; 
 int kNcFTPBookmarksMailslotMsgSize ; 
 int /*<<< orphan*/  kOpenSelectedBookmarkFileName ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 scalar_t__ FUNC27 (int*) ; 
 scalar_t__ FUNC28 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC29(char *selectedBmName, size_t dsize)
{
#if defined(WIN32) || defined(_WINDOWS)
	char ncftpbookmarks[260];
	const char *prog;
	int winExecResult;
	HANDLE hMailSlot;
	char msg[kNcFTPBookmarksMailslotMsgSize];
	DWORD dwRead;
	BOOL rc;

	if (selectedBmName != NULL)
		memset(selectedBmName, 0, dsize);
	if (gOurInstallationPath[0] == '\0') {
		(void) fprintf(stderr, "Cannot find path to %s.  Please re-run Setup.\n", "ncftpbookmarks.exe");
		return (-1);
	}
	prog = ncftpbookmarks;
	OurInstallationPath(ncftpbookmarks, sizeof(ncftpbookmarks), "ncftpbookmarks.exe");


	hMailSlot = CreateMailslot(kNcFTPBookmarksMailslot, kNcFTPBookmarksMailslotMsgSize, MAILSLOT_WAIT_FOREVER, NULL);

	if (hMailSlot == INVALID_HANDLE_VALUE) {
		SysPerror("CreateMailslot");
		(void) fprintf(stderr, "Could not create communication channel with %s.\n", "ncftpbookmarks.exe");
		(void) fprintf(stderr, "%s", "This means if you select a bookmark to connect to that NcFTP\n");
		(void) fprintf(stderr, "%s", "will not get the message from %s.\n");
	}

	winExecResult = WinExec(prog, SW_SHOWNORMAL);
	if (winExecResult <= 31) switch (winExecResult) {
		case ERROR_BAD_FORMAT:
			fprintf(stderr, "Could not run %s: %s\n", prog, "The .EXE file is invalid");
			return (-1);
		case ERROR_FILE_NOT_FOUND:
			fprintf(stderr, "Could not run %s: %s\n", prog, "The specified file was not found.");
			return (-1);
		case ERROR_PATH_NOT_FOUND:
			fprintf(stderr, "Could not run %s: %s\n", prog, "The specified path was not found.");
			return (-1);
		default:
			fprintf(stderr, "Could not run %s: Unknown error #%d.\n", prog, winExecResult);
			return (-1);
	}

	if (hMailSlot != INVALID_HANDLE_VALUE) {
		fprintf(stdout, "Waiting for %s to exit...\n", "ncftpbookmarks.exe");
		ZeroMemory(msg, sizeof(msg));
		dwRead = 0;
		rc = ReadFile(
			hMailSlot,
			msg,
			sizeof(msg),
			&dwRead,
			NULL
			);

		if (!rc) {
			SysPerror("ReadFile");
		} else {
			msg[sizeof(msg) - 1] = '\0';
			Strncpy(selectedBmName, msg, dsize);
			Trace(0, "Selected bookmark from editor: [%s]\n", selectedBmName);
		}
		CloseHandle(hMailSlot);
	}
	return (0);

#else
#ifdef BINDIR
	char ncftpbookmarks[256];
	char *av[8];
	int pid;
	int status;
	char bmSelectionFile[256];
	char pidStr[32];
	FILE *fp;

	if (selectedBmName != NULL)
		memset(selectedBmName, 0, dsize);
	STRNCPY(ncftpbookmarks, BINDIR);
	STRNCAT(ncftpbookmarks, "/");
	STRNCAT(ncftpbookmarks, "ncftpbookmarks");

	STRNCPY(bmSelectionFile, "view");
	if ((selectedBmName != NULL) && (gOurDirectoryPath[0] != '\0')) {
		sprintf(pidStr, ".%u", (unsigned int) getpid());
		OurDirectoryPath(bmSelectionFile, sizeof(bmSelectionFile), kOpenSelectedBookmarkFileName);
		STRNCAT(bmSelectionFile, pidStr);
	}

	if (access(ncftpbookmarks, X_OK) == 0) {
		pid = (int) fork();
		if (pid < 0) {
			return (-1);
		} else if (pid == 0) {
			/* child */

			av[0] = (char *) "ncftpbookmarks";
			av[1] = bmSelectionFile;
			av[2] = NULL;
			execv(ncftpbookmarks, av);
			exit(1);
		} else {
			/* parent NcFTP */
			for (;;) {
#ifdef HAVE_WAITPID
				if ((waitpid(pid, &status, 0) < 0) && (errno != EINTR))
					break;
#else
				if ((wait(&status) < 0) && (errno != EINTR))
					break;
#endif
				if (WIFEXITED(status) || WIFSIGNALED(status))
					break;		/* done */
			}

			if (strcmp(bmSelectionFile, "view") != 0) {
				fp = fopen(bmSelectionFile, FOPEN_READ_TEXT);
				if (fp != NULL) {
					(void) FGets(selectedBmName, dsize, fp);
					(void) fclose(fp);
					(void) unlink(bmSelectionFile);
					Trace(0, "Selected bookmark from editor: [%s]\n", selectedBmName);
				}
			}
			return (0);
		}
	}
	return (-1);
#else	/* BINDIR */
	/* Not installed. */
	return (-1);
#endif	/* BINDIR */
#endif	/* Windows */
}