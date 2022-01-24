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
typedef  int /*<<< orphan*/  pathName ;
struct TYPE_3__ {int /*<<< orphan*/  ourHostName; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_READ_TEXT ; 
 int /*<<< orphan*/  FOPEN_WRITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* gFirewallExceptionList ; 
 char* gFirewallHost ; 
 char* gFirewallPass ; 
 scalar_t__ gFirewallPort ; 
 int gFirewallPrefsLoaded ; 
 int /*<<< orphan*/  gFirewallType ; 
 char* gFirewallUser ; 
 TYPE_1__ gLib ; 
 int gNumProgramRuns ; 
 char* gOurDirectoryPath ; 
 int /*<<< orphan*/  kFirewallNotInUse ; 
 int /*<<< orphan*/  kFirewallPrefFileName ; 
 char* kGlobalFirewallPrefFileName ; 
 char* kGlobalFixedFirewallPrefFileName ; 
 char* FUNC9 (int /*<<< orphan*/ ,char) ; 

void
FUNC10(int forceReload)
{
	FILE *fp, *fp2;
	char pathName[256];
	char *cp;
	int userFile = 0;
	int sysFile = 0;

	if ((gFirewallPrefsLoaded != 0) && (forceReload == 0))
		return;
	gFirewallPrefsLoaded = 1;

	if (gOurDirectoryPath[0] == '\0')
		return;		/* Don't create in root directory. */
	(void) FUNC1(pathName, sizeof(pathName), kFirewallPrefFileName);

	/* Set default values. */
	gFirewallType = kFirewallNotInUse;
	gFirewallPort = 0;
	gFirewallHost[0] = '\0';
	gFirewallUser[0] = '\0';
	gFirewallPass[0] = '\0';
	gFirewallExceptionList[0] = '\0';

	fp2 = FUNC8(kGlobalFirewallPrefFileName, FOPEN_READ_TEXT);
	if (fp2 != NULL) {
		/* Initialize to system-wide defaults. */
		FUNC2(fp2);
		(void) FUNC7(fp2);
		sysFile++;
	}

	fp = FUNC8(pathName, FOPEN_READ_TEXT);
	if (fp != NULL) {
		/* Do user's firewall file. */
		FUNC2(fp);
		(void) FUNC7(fp);
		userFile = 1;
	}

	fp2 = FUNC8(kGlobalFixedFirewallPrefFileName, FOPEN_READ_TEXT);
	if (fp2 != NULL) {
		/* Override with system-wide settings. */
		FUNC2(fp2);
		(void) FUNC7(fp2);
		sysFile++;
	}

	if ((userFile == 0) && (sysFile == 0)) {
		/* Create a blank one, if
		 * there were no system-wide files.
		 */
		fp = FUNC8(pathName, FOPEN_WRITE_TEXT);
		if (fp != NULL) {
			FUNC5(fp);
			(void) FUNC7(fp);
			(void) FUNC6(pathName, 00600);
			gNumProgramRuns = 1;
		}
	}

	if (gFirewallExceptionList[0] == '\0') {
		FUNC0(&gLib);
		cp = FUNC9(gLib.ourHostName, '.');

		if (cp != NULL) {
			(void) FUNC4(gFirewallExceptionList, cp);
			(void) FUNC3(gFirewallExceptionList, ",localdomain");
		}
	}
}