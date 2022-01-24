#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * szKey; } ;
typedef  TYPE_1__ VS_VERSIONINFO ;
struct TYPE_5__ {void* dwProductVersionLS; void* dwProductVersionMS; void* dwFileVersionLS; void* dwFileVersionMS; } ;
typedef  TYPE_2__ VS_FIXEDFILEINFO ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  void* LONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 scalar_t__ RT_VERSION ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VS_VERSION_INFO ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC15(const CHAR *name, LONG ms, LONG ls)
{
    VS_VERSIONINFO *pVerInfo;
    VS_FIXEDFILEINFO *pFixedInfo;
    LPBYTE buffer, ofs;
    CHAR path[MAX_PATH];
    DWORD handle, size;
    HANDLE resource;
    BOOL ret = FALSE;

    FUNC6(path, MAX_PATH);
    /* Some dlls can't be updated on Vista/W2K8 */
    FUNC12(path, "\\version.dll");

    FUNC1(path, name, FALSE);

    size = FUNC4(path, &handle);
    buffer = FUNC7(FUNC5(), 0, size);

    FUNC3(path, 0, size, buffer);

    pVerInfo = (VS_VERSIONINFO *)buffer;
    ofs = (BYTE *)&pVerInfo->szKey[FUNC13(pVerInfo->szKey) + 1];
    pFixedInfo = (VS_FIXEDFILEINFO *)FUNC14(pVerInfo, ofs, 4);

    pFixedInfo->dwFileVersionMS = ms;
    pFixedInfo->dwFileVersionLS = ls;
    pFixedInfo->dwProductVersionMS = ms;
    pFixedInfo->dwProductVersionLS = ls;

    resource = FUNC0(name, FALSE);
    if (!resource)
        goto done;

    if (!FUNC11(resource, (LPCSTR)RT_VERSION, (LPCSTR)FUNC9(VS_VERSION_INFO),
                         FUNC10(LANG_NEUTRAL, SUBLANG_NEUTRAL), buffer, size))
        goto done;

    if (!FUNC2(resource, FALSE))
        goto done;

    ret = TRUE;

done:
    FUNC8(FUNC5(), 0, buffer);
    return ret;
}