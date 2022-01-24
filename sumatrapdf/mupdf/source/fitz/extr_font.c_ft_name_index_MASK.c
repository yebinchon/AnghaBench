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
 int FUNC0 (void*,char*) ; 
 char** FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4(void *face, const char *name)
{
	int code = FUNC0(face, (char*)name);
	if (code == 0)
	{
		int unicode = FUNC2(name);
		if (unicode)
		{
			const char **dupnames = FUNC1(unicode);
			while (*dupnames)
			{
				code = FUNC0(face, (char*)*dupnames);
				if (code)
					break;
				dupnames++;
			}
			if (code == 0)
			{
				char buf[10];
				FUNC3(buf, "uni%04X", unicode);
				code = FUNC0(face, buf);
			}
		}
	}
	return code;
}