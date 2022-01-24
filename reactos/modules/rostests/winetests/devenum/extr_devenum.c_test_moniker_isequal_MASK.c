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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  int /*<<< orphan*/  ICreateDevEnum ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC ; 
 int /*<<< orphan*/  CLSID_AudioRendererCategory ; 
 int /*<<< orphan*/  CLSID_LegacyAmFilterCategory ; 
 int /*<<< orphan*/  CLSID_SystemDeviceEnum ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ICreateDevEnum ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    HRESULT res;
    ICreateDevEnum *create_devenum = NULL;
    IEnumMoniker *enum_moniker0 = NULL, *enum_moniker1 = NULL;
    IMoniker *moniker0 = NULL, *moniker1 = NULL;

    res = FUNC0(&CLSID_SystemDeviceEnum, NULL, CLSCTX_INPROC,
                           &IID_ICreateDevEnum, (LPVOID*)&create_devenum);
    if (FUNC1(res))
    {
         FUNC10("Cannot create SystemDeviceEnum object (%x)\n", res);
         return;
    }

    res = FUNC2(create_devenum, &CLSID_LegacyAmFilterCategory, &enum_moniker0, 0);
    FUNC9(FUNC8(res), "Cannot create enum moniker (res = %x)\n", res);
    if (FUNC8(res))
    {
        if (FUNC4(enum_moniker0, 1, &moniker0, NULL) == S_OK &&
            FUNC4(enum_moniker0, 1, &moniker1, NULL) == S_OK)
        {
            res = FUNC6(moniker0, moniker1);
            FUNC9(res == S_FALSE, "IMoniker_IsEqual should fail (res = %x)\n", res);

            res = FUNC6(moniker1, moniker0);
            FUNC9(res == S_FALSE, "IMoniker_IsEqual should fail (res = %x)\n", res);

            FUNC7(moniker0);
            FUNC7(moniker1);
        }
        else
            FUNC10("Cannot get moniker for testing.\n");
    }
    FUNC5(enum_moniker0);

    res = FUNC2(create_devenum, &CLSID_LegacyAmFilterCategory, &enum_moniker0, 0);
    FUNC9(FUNC8(res), "Cannot create enum moniker (res = %x)\n", res);
    res = FUNC2(create_devenum, &CLSID_AudioRendererCategory, &enum_moniker1, 0);
    FUNC9(FUNC8(res), "Cannot create enum moniker (res = %x)\n", res);
    if (FUNC8(res))
    {
        if (FUNC4(enum_moniker0, 1, &moniker0, NULL) == S_OK &&
            FUNC4(enum_moniker1, 1, &moniker1, NULL) == S_OK)
        {
            res = FUNC6(moniker0, moniker1);
            FUNC9(res == S_FALSE, "IMoniker_IsEqual should failed (res = %x)\n", res);

            res = FUNC6(moniker1, moniker0);
            FUNC9(res == S_FALSE, "IMoniker_IsEqual should failed (res = %x)\n", res);

            FUNC7(moniker0);
            FUNC7(moniker1);
        }
        else
            FUNC10("Cannot get moniker for testing.\n");
    }
    FUNC5(enum_moniker0);
    FUNC5(enum_moniker1);

    res = FUNC2(create_devenum, &CLSID_LegacyAmFilterCategory, &enum_moniker0, 0);
    FUNC9(FUNC8(res), "Cannot create enum moniker (res = %x)\n", res);
    res = FUNC2(create_devenum, &CLSID_LegacyAmFilterCategory, &enum_moniker1, 0);
    FUNC9(FUNC8(res), "Cannot create enum moniker (res = %x)\n", res);
    if (FUNC8(res))
    {
        if (FUNC4(enum_moniker0, 1, &moniker0, NULL) == S_OK &&
            FUNC4(enum_moniker1, 1, &moniker1, NULL) == S_OK)
        {
            res = FUNC6(moniker0, moniker1);
            FUNC9(res == S_OK, "IMoniker_IsEqual failed (res = %x)\n", res);

            res = FUNC6(moniker1, moniker0);
            FUNC9(res == S_OK, "IMoniker_IsEqual failed (res = %x)\n", res);

            FUNC7(moniker0);
            FUNC7(moniker1);
        }
        else
            FUNC10("Cannot get moniker for testing.\n");
    }
    FUNC5(enum_moniker0);
    FUNC5(enum_moniker1);

    FUNC3(create_devenum);

    return;
}