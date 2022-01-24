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
struct stat {int st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 

int
FUNC9(char *printer_name, uint8 ** data)
{
	char *home, *path;
	struct stat st;
	int fd, length;

	if (printer_name == NULL)
		return 0;

	*data = NULL;

	home = FUNC2("HOME");
	if (home == NULL)
		return 0;

	path = (char *) FUNC8(FUNC6(home) + sizeof("/.rdesktop/rdpdr/") + FUNC6(printer_name) +
				sizeof("/AutoPrinterCacheData") + 1);
	FUNC5(path, "%s/.rdesktop/rdpdr/%s/AutoPrinterCacheData", home, printer_name);

	fd = FUNC3(path, O_RDONLY);
	if (fd == -1)
	{
		FUNC7(path);
		return 0;
	}

	if (FUNC1(fd, &st))
	{
		FUNC7(path);
		FUNC0(fd);
		return 0;
	}

	*data = (uint8 *) FUNC8(st.st_size);
	length = FUNC4(fd, *data, st.st_size);
	FUNC0(fd);
	FUNC7(path);
	return length;
}