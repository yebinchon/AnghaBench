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
typedef  char char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int MAX_ENV_PATH_LEN ; 
 char NUL ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * exe_name ; 
 char* exe_path ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC9(void)
{
    /* Maximum length of $PATH is more than MAXPATHL.  8191 is often mentioned
     * as the maximum length that works (plus a NUL byte). */
#define MAX_ENV_PATH_LEN 8192
    char	temp[MAX_ENV_PATH_LEN];
    char_u	*p;

    if (exe_name == NULL)
    {
	/* store the name of the executable, may be used for $VIM */
	FUNC1(NULL, temp, MAX_ENV_PATH_LEN - 1);
	if (*temp != NUL)
	    exe_name = FUNC0((char_u *)temp, FALSE);
    }

    if (exe_path == NULL && exe_name != NULL)
    {
	exe_path = FUNC8(exe_name,
				     (int)(FUNC5(exe_name) - exe_name));
	if (exe_path != NULL)
	{
	    /* Append our starting directory to $PATH, so that when doing
	     * "!xxd" it's found in our starting directory.  Needed because
	     * SearchPath() also looks there. */
	    p = FUNC6("PATH");
	    if (p == NULL
		       || FUNC4(p) + FUNC4(exe_path) + 2 < MAX_ENV_PATH_LEN)
	    {
		if (p == NULL || *p == NUL)
		    temp[0] = NUL;
		else
		{
		    FUNC3(temp, p);
		    FUNC2(temp, ";");
		}
		FUNC2(temp, exe_path);
		FUNC7((char_u *)"PATH", temp);
	    }
	}
    }
}