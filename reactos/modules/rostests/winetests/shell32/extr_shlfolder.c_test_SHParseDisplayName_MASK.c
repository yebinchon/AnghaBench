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
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ LPITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    LPITEMIDLIST pidl1, pidl2;
    IShellFolder *desktop;
    WCHAR dirW[MAX_PATH];
    WCHAR nameW[10];
    WCHAR *cdrom;
    HRESULT hr;
    BOOL ret, is_wow64;

if (0)
{
    /* crashes on native */
    FUNC10(NULL, NULL, NULL, 0, NULL);
    nameW[0] = 0;
    FUNC10(nameW, NULL, NULL, 0, NULL);
}

    pidl1 = (LPITEMIDLIST)0xdeadbeef;
    hr = FUNC10(NULL, NULL, &pidl1, 0, NULL);
    FUNC14(FUNC12(hr == E_OUTOFMEMORY) /* < Vista */ ||
       hr == E_INVALIDARG, "failed %08x\n", hr);
    FUNC14(pidl1 == 0, "expected null ptr, got %p\n", pidl1);

    /* dummy name */
    nameW[0] = 0;
    hr = FUNC10(nameW, NULL, &pidl1, 0, NULL);
    FUNC14(hr == S_OK, "failed %08x\n", hr);
    hr = FUNC9(&desktop);
    FUNC14(hr == S_OK, "failed %08x\n", hr);
    hr = FUNC7(desktop, NULL, NULL, nameW, NULL, &pidl2, NULL);
    FUNC14(hr == S_OK, "failed %08x\n", hr);
    ret = FUNC6(pidl1, pidl2);
    FUNC14(ret == TRUE, "expected equal idls\n");
    FUNC5(pidl1);
    FUNC5(pidl2);

    /* with path */
    FUNC4( dirW, MAX_PATH );

    hr = FUNC10(dirW, NULL, &pidl1, 0, NULL);
    FUNC14(hr == S_OK, "failed %08x\n", hr);
    hr = FUNC7(desktop, NULL, NULL, dirW, NULL, &pidl2, NULL);
    FUNC14(hr == S_OK, "failed %08x\n", hr);

    ret = FUNC6(pidl1, pidl2);
    FUNC14(ret == TRUE, "expected equal idls\n");
    FUNC5(pidl1);
    FUNC5(pidl2);

    /* system32 is not redirected to syswow64 on WOW64 */
    if (!&pIsWow64Process || !FUNC15( FUNC0(), &is_wow64 )) is_wow64 = FALSE;
    if (is_wow64)
    {
        UINT len;
        *dirW = 0;
        len = FUNC2(dirW, MAX_PATH);
        FUNC14(len > 0, "GetSystemDirectoryW failed: %u\n", FUNC1());
        hr = FUNC10(dirW, NULL, &pidl1, 0, NULL);
        FUNC14(hr == S_OK, "failed %08x\n", hr);
        *dirW = 0;
        len = FUNC3(dirW, MAX_PATH);
        FUNC14(len > 0, "GetSystemWow64DirectoryW failed: %u\n", FUNC1());
        hr = FUNC10(dirW, NULL, &pidl2, 0, NULL);
        FUNC14(hr == S_OK, "failed %08x\n", hr);
        ret = FUNC6(pidl1, pidl2);
        FUNC14(ret == FALSE, "expected different idls\n");
        FUNC5(pidl1);
        FUNC5(pidl2);
    }

    FUNC8(desktop);

    cdrom = FUNC13();
    if (!cdrom)
        FUNC16("No empty cdrom drive found, skipping test\n");
    else
    {
        hr = FUNC10(cdrom, NULL, &pidl1, 0, NULL);
        FUNC14(hr == S_OK, "failed %08x\n", hr);
        if (FUNC11(hr)) FUNC5(pidl1);
    }
}