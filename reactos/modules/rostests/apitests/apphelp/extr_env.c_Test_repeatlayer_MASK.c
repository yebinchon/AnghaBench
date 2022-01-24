#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {scalar_t__ AppCompatInfo; scalar_t__ ShimDataSize; int /*<<< orphan*/ * pShimData; TYPE_2__ AppCompatFlagsUser; TYPE_1__ AppCompatFlags; } ;
typedef  TYPE_3__ test_RemoteShimInfo ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDB_MAX_LAYERS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ WINVER_VISTA ; 
 scalar_t__ WINVER_WIN10 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_ShimDataSize ; 
 scalar_t__ g_WinVersion ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(WCHAR szApphelp[256])
{
    static const char* layers[] = {
        "256Color", "256Color", "256Color", "256Color",
        "256Color", "256Color", "256Color", "256Color" };

    HANDLE proc;
    test_RemoteShimInfo info;
    BOOL res;

    FUNC1("__COMPAT_LAYER", "256Color 256Color 256Color 256Color 256Color 256Color 256Color 256Color");


    proc = FUNC6(TRUE);
    res = FUNC7(proc, &info);
    FUNC2(proc, 0);
    FUNC0(proc);

    if (res)
    {
        FUNC8(info.AppCompatFlags.QuadPart == 0, "Expected AppCompatFlags to be 0, was: %s\n", FUNC9(info.AppCompatFlags.QuadPart));
        FUNC8(info.AppCompatFlagsUser.QuadPart == 0, "Expected AppCompatFlagsUser to be 0, was: %s\n", FUNC9(info.AppCompatFlagsUser.QuadPart));
        FUNC8(info.AppCompatInfo == 0, "Expected AppCompatInfo to be 0, was: %p\n", info.AppCompatInfo);
        FUNC8(info.pShimData != NULL, "Expected pShimData to be valid, was NULL\n");
        FUNC8(info.ShimDataSize == g_ShimDataSize, "Expected ShimDataSize to be %u, was: %u\n", g_ShimDataSize, info.ShimDataSize);
        if (info.pShimData)
        {
            /* Win10 only 'loads' one layer */
            if (g_WinVersion < WINVER_VISTA)
                FUNC4(info.pShimData, SDB_MAX_LAYERS, layers);
            else if (g_WinVersion < WINVER_WIN10)
                FUNC5(info.pShimData, szApphelp, SDB_MAX_LAYERS, layers);
            else
                FUNC3(info.pShimData, szApphelp, 1, layers);
        }
    }
    else
    {
        FUNC8(0, "Unable to get process info!\n");
    }

}