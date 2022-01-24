#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int ShimDataSize; TYPE_3__* pShimData; int /*<<< orphan*/  AppCompatInfo; int /*<<< orphan*/  AppCompatFlagsUser; int /*<<< orphan*/  AppCompatFlags; } ;
typedef  TYPE_1__ test_RemoteShimInfo ;
typedef  int /*<<< orphan*/  peb ;
typedef  int /*<<< orphan*/  pbi ;
typedef  int /*<<< orphan*/  mbi ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_15__ {int RegionSize; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {int /*<<< orphan*/ * pShimData; int /*<<< orphan*/  AppCompatInfo; int /*<<< orphan*/  AppCompatFlagsUser; int /*<<< orphan*/  AppCompatFlags; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/ * PebBaseAddress; int /*<<< orphan*/  member_0; } ;
typedef  int SIZE_T ;
typedef  TYPE_2__ PROCESS_BASIC_INFORMATION ;
typedef  TYPE_3__ PEB ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_4__ MEMORY_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProcessBasicInformation ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int) ; 

__attribute__((used)) static BOOL FUNC8(HANDLE proc, test_RemoteShimInfo* info)
{
    PROCESS_BASIC_INFORMATION pbi = { 0 };
    ULONG sizeOut = 0;
    NTSTATUS status = FUNC1(proc, ProcessBasicInformation, &pbi, sizeof(pbi), &sizeOut);
    FUNC6(FUNC0(status), "Expected NtQI to succeed, but failed with: %x\n", status);
    FUNC5(info, 0, sizeof(*info));
    if (FUNC0(status))
    {
        PEB peb = { 0 };
        if (FUNC7(proc, pbi.PebBaseAddress, &peb, sizeof(peb)))
        {
            MEMORY_BASIC_INFORMATION mbi = { 0 };
            SIZE_T dwRead;

            info->AppCompatFlags = peb.AppCompatFlags;
            info->AppCompatFlagsUser = peb.AppCompatFlagsUser;
            info->AppCompatInfo = peb.AppCompatInfo;
            if (peb.pShimData == NULL)
                return TRUE;

            dwRead = FUNC2(proc, (LPCVOID)peb.pShimData, &mbi, sizeof(mbi));
            FUNC6(dwRead == sizeof(mbi), "Expected VQE to return %u, got %lu\n", sizeof(mbi), dwRead);
            if (dwRead == sizeof(mbi) || peb.pShimData == NULL)
            {
                info->ShimDataSize = mbi.RegionSize;
                info->pShimData = FUNC4(mbi.RegionSize);
                if (FUNC7(proc, peb.pShimData, info->pShimData, mbi.RegionSize))
                    return TRUE;
                FUNC3(info->pShimData);
                info->pShimData = NULL;
            }
        }
    }
    return FALSE;
}