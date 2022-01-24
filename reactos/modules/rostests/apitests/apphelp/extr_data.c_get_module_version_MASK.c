#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dwFileVersionMS; int /*<<< orphan*/  dwProductVersionMS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_VERSION ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  VS_VERSION_INFO ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DWORD FUNC12(HMODULE mod)
{
    DWORD dwVersion = 0;
    HRSRC hResInfo = FUNC1(mod, FUNC9(VS_VERSION_INFO), RT_VERSION);
    DWORD dwSize = FUNC10(mod, hResInfo);
    if (hResInfo && dwSize)
    {
        VS_FIXEDFILEINFO *lpFfi;
        UINT uLen;

        HGLOBAL hResData = FUNC5(mod, hResInfo);
        LPVOID pRes = FUNC8(hResData);
        HLOCAL pResCopy = FUNC6(LMEM_FIXED, dwSize);

        FUNC0(pResCopy, pRes, dwSize);
        FUNC2(hResData);

        if (FUNC11(pResCopy, L"\\", (LPVOID*)&lpFfi, &uLen))
        {
            dwVersion = (FUNC3(lpFfi->dwProductVersionMS) << 8) | FUNC4(lpFfi->dwProductVersionMS);
            if (!dwVersion)
                dwVersion = (FUNC3(lpFfi->dwFileVersionMS) << 8) | FUNC4(lpFfi->dwFileVersionMS);
        }

        FUNC7(pResCopy);
    }

    return dwVersion;
}