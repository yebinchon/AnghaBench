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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ errno ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static BOOL
FUNC7(char *base, char *printer)
{
	char *path;

	path = (char *) FUNC6(FUNC4(base) + sizeof("/.rdesktop/rdpdr/") + FUNC4(printer) + 1);

	FUNC2(path, "%s/.rdesktop", base);
	if ((FUNC0(path, 0700) == -1) && errno != EEXIST)
	{
		FUNC1(path);
		FUNC5(path);
		return False;
	}

	FUNC3(path, "/rdpdr");
	if ((FUNC0(path, 0700) == -1) && errno != EEXIST)
	{
		FUNC1(path);
		FUNC5(path);
		return False;
	}

	FUNC3(path, "/");
	FUNC3(path, printer);
	if ((FUNC0(path, 0700) == -1) && errno != EEXIST)
	{
		FUNC1(path);
		FUNC5(path);
		return False;
	}

	FUNC5(path);
	return True;
}