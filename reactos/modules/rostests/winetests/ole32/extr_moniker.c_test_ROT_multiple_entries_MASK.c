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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  char const IRunningObjectTable ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__,...) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ MK_S_MONIKERALREADYREGISTERED ; 
 int /*<<< orphan*/  Test_ClassFactory ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    HRESULT hr;
    IMoniker *pMoniker = NULL;
    IRunningObjectTable *pROT = NULL;
    DWORD dwCookie1, dwCookie2;
    IUnknown *pObject = NULL;
    static const WCHAR moniker_path[] =
        {'\\', 'w','i','n','d','o','w','s','\\','s','y','s','t','e','m','\\','t','e','s','t','1','.','d','o','c',0};

    hr = FUNC1(0, &pROT);
    FUNC9(hr, GetRunningObjectTable);

    hr = FUNC0(moniker_path, &pMoniker);
    FUNC9(hr, CreateFileMoniker);

    hr = FUNC4(pROT, 0, (IUnknown *)&Test_ClassFactory, pMoniker, &dwCookie1);
    FUNC9(hr, IRunningObjectTable_Register);

    hr = FUNC4(pROT, 0, (IUnknown *)&Test_ClassFactory, pMoniker, &dwCookie2);
    FUNC8(hr == MK_S_MONIKERALREADYREGISTERED, "IRunningObjectTable_Register should have returned MK_S_MONIKERALREADYREGISTERED instead of 0x%08x\n", hr);

    FUNC8(dwCookie1 != dwCookie2, "cookie returned for registering duplicate object shouldn't match cookie of original object (0x%x)\n", dwCookie1);

    hr = FUNC3(pROT, pMoniker, &pObject);
    FUNC9(hr, IRunningObjectTable_GetObject);
    FUNC7(pObject);

    hr = FUNC6(pROT, dwCookie1);
    FUNC9(hr, IRunningObjectTable_Revoke);

    hr = FUNC3(pROT, pMoniker, &pObject);
    FUNC9(hr, IRunningObjectTable_GetObject);
    FUNC7(pObject);

    hr = FUNC6(pROT, dwCookie2);
    FUNC9(hr, IRunningObjectTable_Revoke);

    FUNC2(pMoniker);

    FUNC5(pROT);
}