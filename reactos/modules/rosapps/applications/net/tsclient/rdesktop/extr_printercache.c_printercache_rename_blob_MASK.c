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
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static BOOL
FUNC7(char *printer, char *new_printer)
{
	char *printer_path;
	char *new_printer_path;
	int printer_maxlen;

	char *home;

	if (printer == NULL)
		return False;

	home = FUNC0("HOME");
	if (home == NULL)
		return False;

	printer_maxlen =
		(FUNC4(printer) >
		 FUNC4(new_printer) ? FUNC4(printer) : FUNC4(new_printer)) + FUNC4(home) +
		sizeof("/.rdesktop/rdpdr/") + 1;

	printer_path = (char *) FUNC6(printer_maxlen);
	new_printer_path = (char *) FUNC6(printer_maxlen);

	FUNC3(printer_path, "%s/.rdesktop/rdpdr/%s", home, printer);
	FUNC3(new_printer_path, "%s/.rdesktop/rdpdr/%s", home, new_printer);

	FUNC1("%s,%s\n", printer_path, new_printer_path);
	if (FUNC2(printer_path, new_printer_path) < 0)
	{
		FUNC5(printer_path);
		FUNC5(new_printer_path);
		return False;
	}

	FUNC5(printer_path);
	FUNC5(new_printer_path);
	return True;
}