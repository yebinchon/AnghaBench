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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char NUL ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

void
FUNC14(
    char	*argv0)
{
    char	*runpath = NULL;
    char	*path;
    char	*pathbuf;

    if (*argv0 == '/')
	runpath = FUNC9(argv0);
    else if (*argv0 == '.' || FUNC7(argv0, '/'))
    {
	runpath = (char *) FUNC4(MAXPATHLEN);
	if (FUNC2(runpath, MAXPATHLEN) == NULL)
	    runpath[0] = NUL;
	FUNC6(runpath, "/");
	FUNC6(runpath, argv0);
    }
    else
    {
	path = FUNC3("PATH");
	if (path != NULL)
	{
	    runpath = (char *) FUNC4(MAXPATHLEN);
	    pathbuf = FUNC9(path);
	    path = FUNC12(pathbuf, ":");
	    do
	    {
		FUNC8(runpath, path);
		FUNC6(runpath, "/");
		FUNC6(runpath, argv0);
		if (FUNC0(runpath, X_OK) == 0)
		    break;
	    } while ((path = FUNC12(NULL, ":")) != NULL);
	    FUNC1(pathbuf);
	}
    }

    if (runpath != NULL)
    {
	char runbuf[MAXPATHLEN];

	/*
	 * We found the run directory. Now find the install dir.
	 */
	(void)FUNC13((char_u *)runpath, (char_u *)runbuf, MAXPATHLEN, 1);
	path = FUNC11(runbuf, '/');
	if (path != NULL)
	    *path = NUL;		/* remove the vim/gvim name */
	path = FUNC11(runbuf, '/');
	if (path != NULL)
	{
	    if (FUNC10(path, "/bin", 4) == 0)
		FUNC5(runbuf);
	    else if (FUNC10(path, "/src", 4) == 0)
	    {
		*path = NUL;	/* development tree */
		FUNC5(runbuf);
	    }
	}
	FUNC1(runpath);
    }
}