#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_9__ {scalar_t__ Preinstalled; int /*<<< orphan*/  File; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ GFRI_ENTRY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 scalar_t__ RT_RCDATA ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC24(const GFRI_ENTRY *Entry)
{
    WCHAR szPath[MAX_PATH], szTempPath[MAX_PATH];
    BOOL Installed = FALSE;

    if (Entry->Preinstalled)
    {
        FUNC7(szPath, Entry->File);
        FUNC22("GetSystemFontPath: %S\n", szPath);
        if (FUNC5(szPath) == INVALID_FILE_ATTRIBUTES)
        {
            FUNC23("Font file \"%S\" was not found\n", szPath);
            return;
        }
    }
    else
    {
        /* load font data from resource */
        HANDLE hFile;
        HMODULE hMod = FUNC6(NULL);
        HRSRC hRsrc = FUNC4(hMod, Entry->File, (LPCWSTR)RT_RCDATA);
        HGLOBAL hGlobal = FUNC10(hMod, hRsrc);
        DWORD Size = FUNC13(hMod, hRsrc);
        LPVOID pFont = FUNC11(hGlobal);

        /* get temporary file name */
        FUNC9(FUNC21(szTempPath), szTempPath);
        FUNC8(szTempPath, L"FNT", 0, szPath);
        FUNC22("GetTempFileNameW: %S\n", szPath);

        /* write to file */
        hFile = FUNC2(szPath, GENERIC_WRITE, FILE_SHARE_READ, NULL,
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
        FUNC20(hFile, pFont, Size, &Size, NULL);
        FUNC1(hFile);

        /* check existence */
        if (FUNC5(szPath) == INVALID_FILE_ATTRIBUTES)
        {
            FUNC23("Font file \"%S\" was not stored\n", szPath);
            return;
        }

        /* install */
        Installed = !!FUNC0(szPath);
        if (!Installed)
        {
            FUNC23("Font file \"%S\" was not installed\n", szPath);
            FUNC12(szPath);
            FUNC3(szPath);
            return;
        }
    }

    FUNC14(szPath, Entry);
    FUNC15(szPath, Entry);
    FUNC16(szPath, Entry);
    FUNC17(szPath, Entry);
    FUNC18(szPath, Entry);
    FUNC19(szPath, Entry);

    if (!Entry->Preinstalled)
    {
        if (Installed)
        {
            FUNC12(szPath);
            FUNC3(szPath);
        }
    }
}