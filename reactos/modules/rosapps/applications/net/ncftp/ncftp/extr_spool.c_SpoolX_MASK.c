#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  spathname2 ;
typedef  int /*<<< orphan*/  spathname ;
typedef  int /*<<< orphan*/  sdir ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  ldir2 ;
struct TYPE_2__ {char* defaultAnonPassword; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_WRITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,char const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const* const,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__ gLib ; 
 int /*<<< orphan*/  gSpoolSerial ; 
 int /*<<< orphan*/  gUnprocessedJobs ; 
 scalar_t__ kDefaultFTPPort ; 
 int /*<<< orphan*/  kPasswordMagic ; 
 int kPasswordMagicLen ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char const* const,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const* const) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int
FUNC15(
	const char *const op,
	const char *const rfile,
	const char *const rdir,
	const char *const lfile,
	const char *const ldir,
	const char *const host,
	const char *const ip,
	const unsigned int port,
	const char *const user,
	const char *const passclear,
	int xtype,
	int recursive,
	int delete,
	int passive,
	const char *const precmd,
	const char *const perfilecmd,
	const char *const postcmd,
	time_t when)
{
	char sdir[256];
	char pass[160];
	char spathname[256];
	char spathname2[256];
	char ldir2[256];
	FILE *fp;
#if defined(WIN32) || defined(_WINDOWS)
#else
	mode_t um;
#endif

	if (FUNC1(sdir, sizeof(sdir)) < 0)
		return (-1);

	gSpoolSerial++;
	FUNC2(sdir, spathname2, sizeof(spathname2), op[0], gSpoolSerial, when);
	FUNC2(sdir, spathname, sizeof(spathname), 'z', gSpoolSerial, when);
#if defined(WIN32) || defined(_WINDOWS)
	fp = fopen(spathname, FOPEN_WRITE_TEXT);
#else
	um = FUNC13(077);
	fp = FUNC6(spathname, FOPEN_WRITE_TEXT);
	(void) FUNC13(um);
#endif
	if (fp == NULL)
		return (-1);

	if (FUNC7(fp, "# This is a NcFTP spool file entry.\n# Run the \"ncftpbatch\" program to process the spool directory.\n#\n") < 0)
		goto err;
	if (FUNC7(fp, "op=%s\n", op) < 0)
		goto err;
	if (FUNC7(fp, "hostname=%s\n", host) < 0)
		goto err;
	if ((ip != NULL) && (ip[0] != '\0') && (FUNC7(fp, "host-ip=%s\n", ip) < 0))
		goto err;
	if ((port > 0) && (port != (unsigned int) kDefaultFTPPort) && (FUNC7(fp, "port=%u\n", port) < 0))
		goto err;
	if ((user != NULL) && (user[0] != '\0') && (FUNC11(user, "anonymous") != 0) && (FUNC7(fp, "user=%s\n", user) < 0))
		goto err;
	if ((FUNC11(user, "anonymous") != 0) && (passclear != NULL) && (passclear[0] != '\0')) {
		(void) FUNC8(pass, kPasswordMagic, kPasswordMagicLen);
		FUNC3(pass + kPasswordMagicLen, passclear, FUNC12(passclear), 1);
		if (FUNC7(fp, "pass=%s\n", pass) < 0)
			goto err;
	} else if ((FUNC11(user, "anonymous") == 0) && (gLib.defaultAnonPassword[0] != '\0')) {
		if (FUNC7(fp, "anon-pass=%s\n", gLib.defaultAnonPassword) < 0)
			goto err;
	}
	if (FUNC7(fp, "xtype=%c\n", xtype) < 0)
		goto err;
	if ((recursive != 0) && (FUNC7(fp, "recursive=%s\n", FUNC4(recursive)) < 0))
		goto err;
	if ((delete != 0) && (FUNC7(fp, "delete=%s\n", FUNC4(delete)) < 0))
		goto err;
	if (FUNC7(fp, "passive=%d\n", passive) < 0)
		goto err;
	if (FUNC7(fp, "remote-dir=%s\n", rdir) < 0)
		goto err;
	if ((ldir == NULL) || (ldir[0] == '\0') || (FUNC11(ldir, ".") == 0)) {
		/* Use current process' working directory. */
		FUNC0(ldir2, sizeof(ldir2));
		if (FUNC7(fp, "local-dir=%s\n", ldir2) < 0)
			goto err;
	} else {
		if (FUNC7(fp, "local-dir=%s\n", ldir) < 0)
			goto err;
	}
	if (FUNC7(fp, "remote-file=%s\n", rfile) < 0)
		goto err;
	if (FUNC7(fp, "local-file=%s\n", lfile) < 0)
		goto err;
	if ((precmd != NULL) && (precmd[0] != '\0') && (FUNC7(fp, "pre-command=%s\n", precmd) < 0))
		goto err;
	if ((perfilecmd != NULL) && (perfilecmd[0] != '\0') && (FUNC7(fp, "per-file-command=%s\n", perfilecmd) < 0))
		goto err;
	if ((postcmd != NULL) && (postcmd[0] != '\0') && (FUNC7(fp, "post-command=%s\n", postcmd) < 0))
		goto err;

	if (FUNC5(fp) < 0)
		goto err2;

	/* Move the spool file into its "live" name. */
	if (FUNC10(spathname, spathname2) < 0) {
		FUNC9("rename spoolfile failed");
		goto err3;
	}
	gUnprocessedJobs++;
	return (0);

err:
	(void) FUNC5(fp);
err2:
	FUNC9("write to spool file failed");
err3:
	(void) FUNC14(spathname);
	return (-1);
}