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
typedef  int /*<<< orphan*/  _TCHAR ;
typedef  int WCHAR ;

/* Variables and functions */
 int FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

int FUNC6(const _TCHAR* _path)
{
    WCHAR newdir[MAX_PATH];

    if (!FUNC2(_path))
    {
        FUNC4(_path ? FUNC1() : 0);
        return -1;
    }

    /* Update the drive-specific current directory variable */
    if (FUNC0(MAX_PATH, newdir) >= 2)
    {
        if (newdir[1] == L':')
        {
            WCHAR envvar[4] = { L'=', FUNC5(newdir[0]), L':', L'\0' };
            FUNC3(envvar, newdir);
        }
    }

    return 0;
}