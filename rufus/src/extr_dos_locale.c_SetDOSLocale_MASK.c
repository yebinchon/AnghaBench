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
typedef  int ULONG ;
struct TYPE_2__ {int default_cp; char* name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FUNC0 () ; 
 int MAX_PATH ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC9 () ; 
 char* FUNC10 (char const*) ; 
 TYPE_1__* kbdrv_data ; 
 char* FUNC11 (int) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

BOOL FUNC17(const char* path, BOOL bFreeDOS)
{
	FILE* fd;
	char filename[MAX_PATH];
	ULONG cp;
	const char *kb;
	int kbdrv;
	const char* egadrv;

	// First handle the codepage
	kb = FUNC9();
	// We have a keyboard ID, but that doesn't mean it's supported
	kbdrv = bFreeDOS?FUNC5(kb):FUNC12(kb);
	if (kbdrv < 0) {
		FUNC16("Keyboard id '%s' is not supported - falling back to 'us'\n", kb);
		kb = "us";
		kbdrv = bFreeDOS?FUNC5(kb):FUNC12(kb);	// Always succeeds
	}
	FUNC16("Will use DOS keyboard '%s' [%s]\n", kb, FUNC10(kb));

	// Now get a codepage
	cp = FUNC0();
	egadrv = bFreeDOS?FUNC4(cp):FUNC11(cp);
	if (egadrv == NULL) {
		// We need to use the fallback CP from the keyboard we got above, as 437 is not always available
		FUNC16("Unable to find an EGA file with codepage %d [%s]\n", cp, FUNC2(cp));
		cp = kbdrv_data[kbdrv].default_cp;
		egadrv =  bFreeDOS?"ega.cpx":"ega.cpi";
	} else if (bFreeDOS) {
		cp = FUNC6(cp);
	}
	FUNC16("Will use codepage %d [%s]\n", cp, FUNC2(cp));

	if ((cp == 437) && (FUNC15(kb, "us") == 0)) {
		// Nothing much to do if US/US - just notify in autoexec.bat
		FUNC14(filename, path);
		FUNC13(filename, "\\AUTOEXEC.BAT");
		fd = FUNC7(filename, "w+");
		if (fd == NULL) {
			FUNC16("Unable to create 'AUTOEXEC.BAT': %s.\n", FUNC1());
			return FALSE;
		}
		FUNC8(fd, "@echo off\n");
		FUNC8(fd, "set PATH=.;\\;\\LOCALE\n");
		FUNC8(fd, "echo Using %s keyboard with %s codepage [%d]\n", FUNC10("us"), FUNC2(437), 437);
		FUNC3(fd);
		FUNC16("Successfully wrote 'AUTOEXEC.BAT'\n");
		return TRUE;
	}

	// CONFIG.SYS
	FUNC14(filename, path);
	FUNC13(filename, "\\CONFIG.SYS");
	fd = FUNC7(filename, "w+");
	if (fd == NULL) {
		FUNC16("Unable to create 'CONFIG.SYS': %s.\n", FUNC1());
		return FALSE;
	}
	if (bFreeDOS) {
		FUNC8(fd, "!MENUCOLOR=7,0\nMENU\nMENU   FreeDOS Language Selection Menu\n");
		FUNC8(fd, "MENU   \xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD"
			"\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\xCD\nMENU\n");
	} else {
		FUNC8(fd, "[MENU]\n");
	}
	FUNC8(fd, "MENUDEFAULT=1,5\n");
	// Menu item max: 70 characters
	FUNC8(fd, "%s1%c Use %s keyboard with %s codepage [%d]\n",
		bFreeDOS?"MENU ":"MENUITEM=", bFreeDOS?')':',', FUNC10(kb), FUNC2(cp), (int)cp);
	FUNC8(fd, "%s2%c Use %s keyboard with %s codepage [%d]\n",
		bFreeDOS?"MENU ":"MENUITEM=", bFreeDOS?')':',', FUNC10("us"), FUNC2(437), 437);
	FUNC8(fd, "%s", bFreeDOS?"MENU\n12?\n":"[1]\ndevice=\\locale\\display.sys con=(ega,,1)\n[2]\n");
	FUNC3(fd);
	FUNC16("Successfully wrote 'CONFIG.SYS'\n");

	// AUTOEXEC.BAT
	FUNC14(filename, path);
	FUNC13(filename, "\\AUTOEXEC.BAT");
	fd = FUNC7(filename, "w+");
	if (fd == NULL) {
		FUNC16("Unable to create 'AUTOEXEC.BAT': %s.\n", FUNC1());
		return FALSE;
	}
	FUNC8(fd, "@echo off\n");
	FUNC8(fd, "set PATH=.;\\;\\LOCALE\n");
	if (bFreeDOS)
		FUNC8(fd, "display con=(ega,,1)\n");
	FUNC8(fd, "GOTO %%CONFIG%%\n");
	FUNC8(fd, ":1\n");
	FUNC8(fd, "mode con codepage prepare=((%d) \\locale\\%s) > NUL\n", (int)cp, egadrv);
	FUNC8(fd, "mode con codepage select=%d > NUL\n", (int)cp);
	FUNC8(fd, "keyb %s,,\\locale\\%s\n", kb, kbdrv_data[kbdrv].name);
	FUNC8(fd, ":2\n");
	FUNC3(fd);
	FUNC16("Successfully wrote 'AUTOEXEC.BAT'\n");

	return TRUE;
}