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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int PID_REVNUMBER ; 
 int /*<<< orphan*/  VT_I4 ; 
 int /*<<< orphan*/  VT_LPSTR ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static UINT FUNC5(MSIHANDLE hdb, LPSTR prodcode)
{
    UINT res;
    MSIHANDLE suminfo;

    /* build summary info */
    res = FUNC1(hdb, NULL, 7, &suminfo);
    FUNC4(res == ERROR_SUCCESS, "Failed to open summaryinfo\n");

    res = FUNC3(suminfo, 2, VT_LPSTR, 0, NULL,
                                    "Installation Database");
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC3(suminfo, 3, VT_LPSTR, 0, NULL,
                                    "Installation Database");
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC3(suminfo, 4, VT_LPSTR, 0, NULL,
                                    "Wine Hackers");
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC3(suminfo, 7, VT_LPSTR, 0, NULL,
                                    ";1033");
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC3(suminfo, PID_REVNUMBER, VT_LPSTR, 0, NULL,
                                    "{A2078D65-94D6-4205-8DEE-F68D6FD622AA}");
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC3(suminfo, 14, VT_I4, 100, NULL, NULL);
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC3(suminfo, 15, VT_I4, 0, NULL, NULL);
    FUNC4(res == ERROR_SUCCESS, "Failed to set summary info\n");

    res = FUNC2(suminfo);
    FUNC4(res == ERROR_SUCCESS, "Failed to make summary info persist\n");

    res = FUNC0(suminfo);
    FUNC4(res == ERROR_SUCCESS, "Failed to close suminfo\n");

    return res;
}