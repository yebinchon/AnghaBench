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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (int) ; 

char *FUNC5(const char *name, const char *ext)
{
	int namelen;
	int extlen = FUNC2(ext);
	char *base;
	char *slash;

	if(!name)
		name = "widl.tab";

	slash = FUNC3(name, '/');
	if (!slash)
		slash = FUNC3(name, '\\');

	if (slash)
		name = slash + 1;

	namelen = FUNC2(name);

	/* +6 for later extension (strlen("_r.rgs")) and +1 for '\0' */
	base = FUNC4(namelen +6 +1);
	FUNC1(base, name);
	if(!FUNC0(name + namelen-extlen, ext))
	{
		base[namelen - extlen] = '\0';
	}
	return base;
}