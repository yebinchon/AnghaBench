#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
struct TYPE_3__ {int dwSize; int /*<<< orphan*/ * pReserved; int /*<<< orphan*/  bAllowWHQLChecks; int /*<<< orphan*/  dwDxDiagHeaderVersion; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IDxDiagProvider ;
typedef  int /*<<< orphan*/  IDxDiagContainer ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DXDIAG_INIT_PARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DxDiagProvider ; 
 scalar_t__ CO_E_NOTINITIALIZED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DXDIAG_DX9_SDK_VERSION ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDxDiagProvider ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC10(void)
{
    HRESULT hr;
    IDxDiagProvider *pddp;
    IDxDiagContainer *pddc, *pddc2;
    DXDIAG_INIT_PARAMS params;

    hr = FUNC0(&CLSID_DxDiagProvider, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IDxDiagProvider, (LPVOID*)&pddp);
    FUNC7(hr == S_OK ||
       FUNC6(hr == REGDB_E_CLASSNOTREG), /* Clean W2K3 */
       "Creating a IDxDiagProvider instance failed with %x\n", hr);
    if (FUNC1(hr))
    {
        FUNC8("Failed to create a IDxDiagProvider instance\n");
        return;
    }

    /* Test calling IDxDiagProvider::GetRootContainer before initialization. */
    hr = FUNC3(pddp, NULL);
    FUNC7(hr == CO_E_NOTINITIALIZED,
       "Expected IDxDiagProvider::GetRootContainer to return CO_E_NOTINITIALIZED, got %x\n", hr);

    hr = FUNC3(pddp, &pddc);
    FUNC7(hr == CO_E_NOTINITIALIZED,
       "Expected IDxDiagProvider::GetRootContainer to return CO_E_NOTINITIALIZED, got %x\n", hr);

    params.dwSize = sizeof(params);
    params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
    params.bAllowWHQLChecks = FALSE;
    params.pReserved = NULL;
    hr = FUNC4(pddp, &params);
    FUNC7(hr == S_OK, "Expected IDxDiagProvider::Initialize to return S_OK, got %x\n", hr);
    if (FUNC1(hr))
    {
        FUNC8("IDxDiagProvider::Initialize failed\n");
        FUNC5(pddp);
        return;
    }

    /* Passing NULL causes a crash on Windows. */
    if (0)
    {
        hr = FUNC3(pddp, NULL);
        FUNC9("IDxDiagProvider::GetRootContainer returned %x\n", hr);
    }

    hr = FUNC3(pddp, &pddc);
    FUNC7(hr == S_OK, "Expected IDxDiagProvider::GetRootContainer to return S_OK, got %x\n", hr);

    /* IDxDiagProvider::GetRootContainer creates new instances of the root
     * container rather than maintain a static root container. */
    hr = FUNC3(pddp, &pddc2);
    FUNC7(hr == S_OK, "Expected IDxDiagProvider::GetRootContainer to return S_OK, got %x\n", hr);
    FUNC7(pddc != pddc2, "Expected the two pointers (%p vs. %p) to be unequal\n", pddc, pddc2);

    FUNC2(pddc2);
    FUNC2(pddc);
    FUNC5(pddp);
}