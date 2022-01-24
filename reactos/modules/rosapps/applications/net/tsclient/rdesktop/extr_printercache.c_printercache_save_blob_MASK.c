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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;

/* Variables and functions */
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(char *printer_name, uint8 * data, uint32 length)
{
	char *home, *path;
	int fd;

	if (printer_name == NULL)
		return;

	home = FUNC1("HOME");
	if (home == NULL)
		return;

	if (!FUNC4(home, printer_name))
		return;

	path = (char *) FUNC10(FUNC6(home) + sizeof("/.rdesktop/rdpdr/") + FUNC6(printer_name) +
				sizeof("/AutoPrinterCacheData") + 1);
	FUNC5(path, "%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData", home, printer_name);

	fd = FUNC2(path, O_WRONLY | O_CREAT | O_TRUNC, 0600);
	if (fd == -1)
	{
		FUNC3(path);
		FUNC9(path);
		return;
	}

	if (FUNC8(fd, data, length) != length)
	{
		FUNC3(path);
		FUNC7(path);
	}

	FUNC0(fd);
	FUNC9(path);
}