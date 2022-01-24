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
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_DESKTOP ; 
 int /*<<< orphan*/  CSIDL_PROGRAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6()
{
	char path[MAX_PATH];
	LPSTR p;

	FUNC0(NULL);

	/* create some shortcuts in the start menu "programs" folder */
	FUNC4(0, path, CSIDL_PROGRAMS, TRUE);
	p = FUNC3(path);

	FUNC5(p, "start-cmd.lnk");
	FUNC2(path, "cmd.exe", "", NULL, NULL, 0, "open console window");

	FUNC5(p, "start-winhello.lnk");
	FUNC2(path, "winhello.exe", "", NULL, NULL, 0, "launch winhello");


	/* create some shortcuts on the desktop */
	FUNC4(0, path, CSIDL_DESKTOP, TRUE);
	p = FUNC3(path);

	FUNC5(p, "start-wcmd.lnk");
	FUNC2(path, "cmd.exe", "", NULL, NULL, 0, "open console window");

	FUNC5(p, "start-winemine.lnk");
	FUNC2(path, "winemine.exe", "", NULL, NULL, 0, "launch winemine");

	FUNC1();

	return 0;
}