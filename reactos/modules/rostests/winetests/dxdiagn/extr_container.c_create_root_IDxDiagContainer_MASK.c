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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DXDIAG_INIT_PARAMS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_DxDiagProvider ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DXDIAG_DX9_SDK_VERSION ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IDxDiagProvider ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  pddc ; 
 int /*<<< orphan*/  pddp ; 

__attribute__((used)) static BOOL FUNC5(void)
{
    HRESULT hr;
    DXDIAG_INIT_PARAMS params;

    hr = FUNC0(&CLSID_DxDiagProvider, NULL, CLSCTX_INPROC_SERVER,
                          &IID_IDxDiagProvider, (LPVOID*)&pddp);
    if (FUNC4(hr))
    {
        params.dwSize = sizeof(params);
        params.dwDxDiagHeaderVersion = DXDIAG_DX9_SDK_VERSION;
        params.bAllowWHQLChecks = FALSE;
        params.pReserved = NULL;
        hr = FUNC2(pddp, &params);
        if (FUNC4(hr))
        {
            hr = FUNC1(pddp, &pddc);
            if (FUNC4(hr))
                return TRUE;
        }
        FUNC3(pddp);
    }
    return FALSE;
}