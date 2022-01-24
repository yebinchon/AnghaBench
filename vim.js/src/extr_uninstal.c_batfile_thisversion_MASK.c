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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZE ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  VIM_VERSION_NODOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(char *path)
{
    FILE	*fd;
    char	line[BUFSIZE];
    char	*p;
    int		ver_len = FUNC5(VIM_VERSION_NODOT);
    int		found = FALSE;

    fd = FUNC2(path, "r");
    if (fd != NULL)
    {
	while (FUNC1(line, BUFSIZE, fd) != NULL)
	{
	    for (p = line; *p != 0; ++p)
		/* don't accept "vim60an" when looking for "vim60". */
		if (FUNC6(p, VIM_VERSION_NODOT, ver_len) == 0
			&& !FUNC4(p[ver_len])
			&& !FUNC3(p[ver_len]))
		{
		    found = TRUE;
		    break;
		}
	    if (found)
		break;
	}
	FUNC0(fd);
    }
    return found;
}