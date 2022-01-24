#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  TAGREF ;

/* Variables and functions */
 int /*<<< orphan*/  SDB_DATABASE_MAIN_SHIM ; 
 scalar_t__ g_LayerDB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

TAGREF FUNC5(const char* szLayerStart, const char* szLayerEnd)
{
    char layer[100] = { 0 };
    WCHAR layerW[100] = { 0 };
    FUNC4(layer, szLayerStart, szLayerEnd - szLayerStart);

    if (!g_LayerDB)
    {
        g_LayerDB = FUNC2(SDB_DATABASE_MAIN_SHIM, 0);
    }

    FUNC0(layerW, layer, FUNC3(layer));
    return FUNC1(g_LayerDB, layerW);
}