#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__* atrLayers; int /*<<< orphan*/  dwLayerCount; } ;
struct TYPE_4__ {scalar_t__ dwMagic; int dwSize; int unknown; TYPE_1__ Query; int /*<<< orphan*/ * szModule; } ;
typedef  TYPE_2__ ShimData_Win7 ;
typedef  scalar_t__ PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t SDB_MAX_LAYERS ; 
 scalar_t__ SHIMDATA_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(PVOID data, WCHAR szApphelp[256], size_t count, const char* layers[])
{
    size_t n;
    ShimData_Win7* pShimData = (ShimData_Win7*)data;

    FUNC5(!FUNC3(pShimData->szModule, szApphelp), "Expected pShimData->Module to be %s, was %s\n",
        FUNC7(szApphelp), FUNC7(pShimData->szModule));
    FUNC5(pShimData->dwMagic == SHIMDATA_MAGIC, "Expected pShimData->dwMagic to be 0x%x, was 0x%x\n",
        SHIMDATA_MAGIC, pShimData->dwMagic);
    FUNC5(pShimData->dwSize == sizeof(ShimData_Win7), "Expected pShimData->dwSize to be %u, was %u\n",
        sizeof(ShimData_Win7), pShimData->dwSize);
    if (pShimData->Query.dwLayerCount != FUNC4(count, SDB_MAX_LAYERS))
    {
        char buf[250] = {0};
        FUNC0("__COMPAT_LAYER", buf, FUNC2(buf));
        FUNC6("At test: %s\n", buf);
    }
    FUNC5(pShimData->Query.dwLayerCount == FUNC4(count, SDB_MAX_LAYERS),
        "Expected LayerCount to be %u, was %u\n", FUNC4(count, SDB_MAX_LAYERS), pShimData->Query.dwLayerCount);
    for (n = 0; n < SDB_MAX_LAYERS; ++n)
    {
        if (n < count)
        {
            FUNC5(pShimData->Query.atrLayers[n] != 0, "Expected to find a valid layer in index %u / %u\n", n, count);
            FUNC1(pShimData->Query.atrLayers[n], layers[n]);
        }
        else
            FUNC5(pShimData->Query.atrLayers[n] == 0, "Expected to find an empty layer in index %u / %u\n", n, count);
    }
    FUNC5(pShimData->unknown == 0x14c, "Expected pShimData->unknown to be 0x14c, was 0x%x\n", pShimData->unknown);
}