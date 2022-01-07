
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* szModule; scalar_t__ dwMagic; int dwSize; int dwCustomSDBMap; } ;
typedef TYPE_1__ ShimData_Win2k3 ;
typedef scalar_t__ PVOID ;


 scalar_t__ SHIMDATA_MAGIC ;
 int lstrcmpW (char*,char*) ;
 int ok (int,char*,int,...) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void Validate_ShimData_Win2k3(PVOID data, size_t count, const char* layers[])
{

    ShimData_Win2k3* pShimData = (ShimData_Win2k3*)data;

    ok(!lstrcmpW(pShimData->szModule, L"ShimEng.dll"), "Expected pShimData->Module to be %s, was %s\n", wine_dbgstr_w(L"ShimEng.dll"), wine_dbgstr_w(pShimData->szModule));
    ok(pShimData->dwMagic == SHIMDATA_MAGIC, "Expected pShimData->dwMagic to be 0x%x, was 0x%x\n", SHIMDATA_MAGIC, pShimData->dwMagic);
    ok(pShimData->dwSize == sizeof(ShimData_Win2k3), "Expected pShimData->dwSize to be %u, was %u\n", sizeof(ShimData_Win2k3), pShimData->dwSize);
    ok(pShimData->dwCustomSDBMap == 1, "Expected pShimData->dwCustomSDBMap to be 1, was %u\n", pShimData->dwCustomSDBMap);
}
