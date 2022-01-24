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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static BOOL
FUNC7(char *printer)
{
	char *path;
	char *home;

	if (printer == NULL)
		return False;

	home = FUNC0("HOME");
	if (home == NULL)
		return False;

	path = (char *) FUNC6(FUNC3(home) + sizeof("/.rdesktop/rdpdr/") + FUNC3(printer) +
				sizeof("/AutoPrinterCacheData") + 1);

	FUNC2(path, "%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData", home, printer);

	if (FUNC4(path) < 0)
	{
		FUNC5(path);
		return False;
	}

	FUNC2(path, "%s/.rdesktop/rdpdr/%s", home, printer);

	if (FUNC1(path) < 0)
	{
		FUNC5(path);
		return False;
	}

	FUNC5(path);
	return True;
}