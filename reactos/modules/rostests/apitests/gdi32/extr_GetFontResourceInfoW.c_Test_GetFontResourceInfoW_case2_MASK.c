#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int FontCount; int** FaceNames; } ;
struct TYPE_6__ {int* lfFaceName; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ LOGFONTW ;
typedef  TYPE_2__ GFRI_ENTRY ;
typedef  int /*<<< orphan*/  Data ;
typedef  size_t DWORD ;
typedef  size_t BOOL ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int*,int*) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static void
FUNC7(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD i, Size, Case = 2;
    static LOGFONTW Data[100];

    /* data NULL, size zero */
    Size = 0;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC5(Ret, 1);
    FUNC5(Size, Entry->FontCount * sizeof(LOGFONTW));

    /* data NULL, size non-zero */
    Size = 1024;
    Ret = FUNC0(pszFilePath, &Size, NULL, Case);
    FUNC5(Ret, 0);
    FUNC5(Size, 1024);

    /* size zero */
    Size = 0;
    FUNC1(Data, sizeof(Data));
    Ret = FUNC0(pszFilePath, &Size, Data, Case);
    FUNC5(Ret, 1);
    FUNC5(Size, Entry->FontCount * sizeof(LOGFONTW));

    /* size non-zero */
    Size = sizeof(Data);
    FUNC1(Data, sizeof(Data));
    Ret = FUNC0(pszFilePath, &Size, Data, Case);
    FUNC5(Ret, 1);
    FUNC5(Size, Entry->FontCount * sizeof(LOGFONTW));
    for (i = 0; i < Entry->FontCount; ++i)
    {
        FUNC4(FUNC2(Data[i].lfFaceName, Entry->FaceNames[i]) == 0,
            "face name #%d mismatched: \"%S\" and \"%S\"\n", (int)i, Data[i].lfFaceName, Entry->FaceNames[i]);
#if 0
        if (lstrcmpiW(Data[i].lfFaceName, Entry->FaceNames[i]) != 0)
        {
            int k, len = lstrlenW(Data[i].lfFaceName);
            for (k = 0; k < len; ++k)
            {
                printf("0x%04X <=> 0x%04X\n", Entry->FaceNames[i][k], Data[i].lfFaceName[k]);
            }
        }
#endif
    }
}