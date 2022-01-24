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
struct TYPE_2__ {char* szModule; scalar_t__ dwMagic; int dwSize; int dwCustomSDBMap; } ;
typedef  TYPE_1__ ShimData_Win2k3 ;
typedef  scalar_t__ PVOID ;

/* Variables and functions */
 scalar_t__ SHIMDATA_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(PVOID data, size_t count, const char* layers[])
{
    //size_t n;
    ShimData_Win2k3* pShimData = (ShimData_Win2k3*)data;

    FUNC1(!FUNC0(pShimData->szModule, L"ShimEng.dll"), "Expected pShimData->Module to be %s, was %s\n", FUNC2(L"ShimEng.dll"), FUNC2(pShimData->szModule));
    FUNC1(pShimData->dwMagic == SHIMDATA_MAGIC, "Expected pShimData->dwMagic to be 0x%x, was 0x%x\n", SHIMDATA_MAGIC, pShimData->dwMagic);
    FUNC1(pShimData->dwSize == sizeof(ShimData_Win2k3), "Expected pShimData->dwSize to be %u, was %u\n", sizeof(ShimData_Win2k3), pShimData->dwSize);
    FUNC1(pShimData->dwCustomSDBMap == 1, "Expected pShimData->dwCustomSDBMap to be 1, was %u\n", pShimData->dwCustomSDBMap);
}