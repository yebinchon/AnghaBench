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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static BOOL FUNC6(const WCHAR *needle, const char *hay)
{
    WCHAR wstr[MAX_PATH];

    if(!needle && !hay)
        return TRUE;

    while(hay && *hay)
    {
        DWORD ret;

        if(FUNC4(hay, "(null)") == 0 && !needle)
            return TRUE;

        ret = FUNC1(CP_ACP, 0, hay, -1, wstr, FUNC0(wstr));
        if(ret == 0)
        {
            FUNC3(0, "Failed to convert string\n");
            return FALSE;
        }

        if(FUNC2(wstr, needle) == 0)
            return TRUE;

        hay += FUNC5(hay) + 1;
    }

    return FALSE;
}