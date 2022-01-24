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
struct TYPE_3__ {size_t dwLayerCount; scalar_t__* atrLayers; } ;
struct TYPE_4__ {scalar_t__ dwMagic; int dwSize; TYPE_1__ Query; } ;
typedef  TYPE_2__ ShimData_Win10_v2 ;
typedef  scalar_t__ PVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t SDB_MAX_LAYERS ; 
 scalar_t__ SHIMDATA_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(PVOID data, WCHAR szApphelp[256], size_t count, const char* layers[])
{
    size_t n;
    ShimData_Win10_v2* pShimData = (ShimData_Win10_v2*)data;

    if (pShimData->dwMagic != SHIMDATA_MAGIC)
    {
        FUNC5("Yet another unknown shimdata variant...\n");
        return;
    }

    FUNC4(pShimData->dwSize == sizeof(ShimData_Win10_v2), "Expected pShimData->dwSize to be %u, was %u\n",
       sizeof(ShimData_Win10_v2), pShimData->dwSize);
    if (pShimData->Query.dwLayerCount != FUNC3(count, SDB_MAX_LAYERS))
    {
        char buf[250] = {0};
        FUNC0("__COMPAT_LAYER", buf, FUNC2(buf));
        FUNC6("At test: %s\n", buf);
    }
    FUNC4(pShimData->Query.dwLayerCount == FUNC3(count, SDB_MAX_LAYERS),
       "Expected LayerCount to be %u, was %u\n", FUNC3(count, SDB_MAX_LAYERS), pShimData->Query.dwLayerCount);
    for (n = 0; n < SDB_MAX_LAYERS; ++n)
    {
        if (n < count)
        {
            FUNC4(pShimData->Query.atrLayers[n] != 0, "Expected to find a valid layer in index %u / %u\n", n, count);
            FUNC1(pShimData->Query.atrLayers[n], layers[n]);
        }
        else
            FUNC4(pShimData->Query.atrLayers[n] == 0, "Expected to find an empty layer in index %u / %u\n", n, count);
    }

}