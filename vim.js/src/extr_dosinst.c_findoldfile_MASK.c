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
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* installdir ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC12(char **destination)
{
    char	*bp = *destination;
    size_t	indir_l = FUNC10(installdir);
    char	*cp = bp + indir_l;
    char	*tmpname;
    char	*farname;

    /*
     * No action needed if exe not found or not in this directory.
     */
    if (bp == NULL
	    || FUNC11(bp, installdir, indir_l) != 0
	    || FUNC7("/\\", *cp++) == NULL
	    || FUNC7(cp, '\\') != NULL
	    || FUNC7(cp, '/') != NULL)
	return;

    tmpname = FUNC1((int)FUNC10(cp) + 1);
    FUNC8(tmpname, cp);
    tmpname[FUNC10(tmpname) - 1] = 'x';	/* .exe -> .exx */

    if (FUNC0(tmpname, 0) == 0)
    {
	FUNC4("\nERROR: %s and %s clash.  Remove or rename %s.\n",
	    tmpname, cp, tmpname);
	FUNC3(1);
    }

    if (FUNC5(cp, tmpname) != 0)
    {
	FUNC4("\nERROR: failed to rename %s to %s: %s\n",
	    cp, tmpname, FUNC9(0));
	FUNC3(1);
    }

    farname = FUNC6(cp);

    if (FUNC5(tmpname, cp) != 0)
    {
	FUNC4("\nERROR: failed to rename %s back to %s: %s\n",
	    tmpname, cp, FUNC9(0));
	FUNC3(1);
    }

    FUNC2(*destination);
    FUNC2(tmpname);
    *destination = farname;
}