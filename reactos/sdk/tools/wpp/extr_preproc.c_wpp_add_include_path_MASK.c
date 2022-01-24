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
 int /*<<< orphan*/  INCLUDESEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** includepath ; 
 int nincludepath ; 
 char** FUNC1 (char**,int) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(const char *path)
{
	char *tok;
	char *cpy = FUNC2(path);
	if(!cpy)
		return 1;

	tok = FUNC4(cpy, INCLUDESEPARATOR);
	while(tok)
	{
		if(*tok) {
			char *dir;
			char *cptr;
			char **new_path;

			dir = FUNC2(tok);
			if(!dir)
			{
				FUNC0(cpy);
				return 1;
			}
			for(cptr = dir; *cptr; cptr++)
			{
				/* Convert to forward slash */
				if(*cptr == '\\')
					*cptr = '/';
			}
			/* Kill eventual trailing '/' */
			if(*(cptr = dir + FUNC3(dir)-1) == '/')
				*cptr = '\0';

			/* Add to list */
			new_path = FUNC1(includepath, (nincludepath+1) * sizeof(*includepath));
			if(!new_path)
			{
				FUNC0(dir);
				FUNC0(cpy);
				return 1;
			}
			includepath = new_path;
			includepath[nincludepath] = dir;
			nincludepath++;
		}
		tok = FUNC4(NULL, INCLUDESEPARATOR);
	}
	FUNC0(cpy);
	return 0;
}