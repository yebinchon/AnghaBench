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
typedef  int /*<<< orphan*/  ncftpbatch ;

/* Variables and functions */
 int /*<<< orphan*/  BINDIR ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int gHaveSpool ; 
 char* gOurInstallationPath ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (char*) ; 

int
FUNC7(void)
{
#if defined(WIN32) || defined(_WINDOWS)
	char ncftpbatch[260];

	if (gHaveSpool < 0) {
		gHaveSpool = 0;
		if (gOurInstallationPath[0] != '\0') {
			OurInstallationPath(ncftpbatch, sizeof(ncftpbatch), "ncftpbatch.exe");
			gHaveSpool = (_access(ncftpbatch, F_OK) == 0) ? 1 : 0;
		}
	}
#elif defined(BINDIR)
	char ncftpbatch[256];

	if (gHaveSpool < 0) {
		STRNCPY(ncftpbatch, BINDIR);
		STRNCAT(ncftpbatch, "/");
		STRNCAT(ncftpbatch, "ncftpbatch");
		gHaveSpool = (access(ncftpbatch, X_OK) == 0) ? 1 : 0;
	}
#else	/* BINDIR */
	if (gHaveSpool < 0) {
		if (FUNC5() == 0) {
			gHaveSpool = (FUNC4("/usr/bin/ncftpbatch", X_OK) == 0) ? 1 : 0;
		} else {
			gHaveSpool = (FUNC6("ncftpbatch -X") == 0) ? 1 : 0;
		}
	}
#endif /* BINDIR */

	return (gHaveSpool);
}