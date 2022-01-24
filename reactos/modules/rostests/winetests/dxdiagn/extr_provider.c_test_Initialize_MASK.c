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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int dwSize; int /*<<< orphan*/ * pReserved; void* bAllowWHQLChecks; void* dwDxDiagHeaderVersion; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IDxDiagProvider ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ DXDIAG_INIT_PARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DxDiagProvider ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* DXDIAG_DX9_SDK_VERSION ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDxDiagProvider ; 
 scalar_t__ REGDB_E_CLASSNOTREG ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;
    IDxDiagProvider *pddp;
    DXDIAG_INIT_PARAMS params;

    hr = FUNC0(&CLSID_DxDiagProvider, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IDxDiagProvider, (LPVOID*)&pddp);
    FUNC5(hr == S_OK ||
       FUNC4(hr == REGDB_E_CLASSNOTREG), /* Clean W2K3 */
       "Creating a IDxDiagProvider instance failed with %x\n", hr);
    if (FUNC1(hr))
    {
        FUNC6("Failed to create a IDxDiagProvider instance\n");
        return;
    }

    /* Test passing a NULL DXDIAG_INIT_PARAMS pointer. */
    hr = FUNC2(pddp, NULL);
    FUNC5(hr == E_POINTER,
       "Expected IDxDiagProvider::Initialize to return E_POINTER, got %x\n", hr);

    /* Test passing invalid dwSize values. */
    params.dwSize = 0;
    hr = FUNC2(pddp, &params);
    FUNC5(hr == E_INVALIDARG,
       "Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\n", hr);

    params.dwSize = sizeof(params) + 1;
    hr = FUNC2(pddp, &params);
    FUNC5(hr == E_INVALIDARG,
       "Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\n", hr);

    /* Test passing an unexpected dwDxDiagHeaderVersion value. */
    params.dwSize = sizeof(params);
    params.dwDxDiagHeaderVersion = 0;
    params.bAllowWHQLChecks = FALSE;
    params.pReserved = NULL;
    hr = FUNC2(pddp, &params);
    FUNC5(hr == E_INVALIDARG,
       "Expected IDxDiagProvider::Initialize to return E_INVALIDARG, got %x\n", hr);

    /* Setting pReserved to a non-NULL value causes a crash on Windows. */
    if (0)
    {
        params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
        params.bAllowWHQLChecks = FALSE;
        params.pReserved = (VOID*)0xdeadbeef;
        hr = FUNC2(pddp, &params);
        FUNC7("IDxDiagProvider::Initialize returned %x\n", hr);
    }

    /* Test passing an appropriately initialized DXDIAG_INIT_PARAMS. */
    params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
    params.bAllowWHQLChecks = FALSE;
    params.pReserved = NULL;
    hr = FUNC2(pddp, &params);
    FUNC5(hr == S_OK, "Expected IDxDiagProvider::Initialize to return S_OK, got %x\n", hr);

    /* Test initializing multiple times. */
    hr = FUNC2(pddp, &params);
    FUNC5(hr == S_OK, "Expected IDxDiagProvider::Initialize to return S_OK, got %x\n", hr);

    FUNC3(pddp);
}