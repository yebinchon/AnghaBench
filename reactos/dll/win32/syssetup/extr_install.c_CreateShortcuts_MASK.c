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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int CSIDL_FLAG_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC11(HINF hinf, LPCWSTR szSection)
{
    INFCONTEXT Context;
    WCHAR szPath[MAX_PATH];
    WCHAR szFolder[MAX_PATH];
    WCHAR szFolderSection[MAX_PATH];
    INT csidl;

    FUNC1(NULL);

    if (!FUNC6(hinf, szSection, NULL, &Context))
        return FALSE;

    do
    {
        if (FUNC8(&Context) < 2)
            continue;

        if (!FUNC10(&Context, 0, szFolderSection, FUNC0(szFolderSection), NULL))
            continue;

        if (!FUNC9(&Context, 1, &csidl))
            continue;

        if (!FUNC10(&Context, 2, szFolder, FUNC0(szFolder), NULL))
            continue;

        if (FUNC4(FUNC5(NULL, csidl|CSIDL_FLAG_CREATE, (HANDLE)-1, SHGFP_TYPE_DEFAULT, szFolder, szPath)))
            continue;

        FUNC3(hinf, szFolderSection, szPath);

    } while (FUNC7(&Context, &Context));

    FUNC2();

    return TRUE;
}