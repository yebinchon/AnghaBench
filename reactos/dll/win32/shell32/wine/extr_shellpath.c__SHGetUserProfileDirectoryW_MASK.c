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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPDWORD ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

BOOL FUNC6(HANDLE hToken, LPWSTR szPath, LPDWORD lpcchPath)
{
    BOOL result;
    if (!hToken)
    {
        FUNC4(FUNC1(), TOKEN_QUERY, &hToken);
        result = FUNC3(hToken, szPath, lpcchPath);
        FUNC0(hToken);
    }
    else if ((INT) hToken == -1)
    {
        result = FUNC2(szPath, lpcchPath);
    }
    else
    {
        result = FUNC3(hToken, szPath, lpcchPath);
    }
    FUNC5("_SHGetUserProfileDirectoryW returning %S\n", szPath);
    return result;
}