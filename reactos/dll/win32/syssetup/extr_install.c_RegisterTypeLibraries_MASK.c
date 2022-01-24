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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CSIDL_SYSTEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOL
FUNC12(HINF hinf, LPCWSTR szSection)
{
    INFCONTEXT InfContext;
    BOOL res;
    WCHAR szName[MAX_PATH];
    WCHAR szPath[MAX_PATH];
    INT csidl;
    LPWSTR p;
    HMODULE hmod;
    HRESULT hret;

    /* Begin iterating the entries in the inf section */
    res = FUNC6(hinf, szSection, NULL, &InfContext);
    if (!res) return FALSE;

    do
    {
        /* Get the name of the current type library */
        if (!FUNC9(&InfContext, 1, szName, FUNC0(szName), NULL))
        {
            FUNC2("SetupGetStringFieldW failed\n");
            continue;
        }

        if (!FUNC8(&InfContext, 2, &csidl))
            csidl = CSIDL_SYSTEM;

        hret = FUNC5(NULL, csidl, NULL, 0, szPath);
        if (FUNC1(hret))
        {
            FUNC2("SHGetFolderPathW failed hret=0x%lx\n", hret);
            continue;
        }

        p = FUNC4(szPath);
        FUNC11(p, szName);

        hmod = FUNC3(szName);
        if (hmod == NULL)
        {
            FUNC2("LoadLibraryW failed\n");
            continue;
        }

        FUNC10(hmod);

    } while (FUNC7(&InfContext, &InfContext));

    return TRUE;
}