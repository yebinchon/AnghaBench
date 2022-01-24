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
typedef  int WORD ;
typedef  int /*<<< orphan*/  VARIANTARG ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  int /*<<< orphan*/  DISPPARAMS ;

/* Variables and functions */
 int DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISP_E_MEMBERNOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_BSTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7(WORD wFlags,
                                         DISPPARAMS* pDispParams,
                                         VARIANT* pVarResult,
                                         EXCEPINFO* pExcepInfo,
                                         UINT* puArgErr)
{
    HRESULT hr;
    VARIANTARG varg0;

    if (!(wFlags & DISPATCH_METHOD))
        return DISP_E_MEMBERNOTFOUND;

    FUNC5(&varg0);
    hr = FUNC0(pDispParams, 0, VT_BSTR, &varg0, puArgErr);
    if (FUNC1(hr))
        return hr;

    FUNC2("%s\n", FUNC6(FUNC3(&varg0)));

    FUNC5(pVarResult);

    FUNC4(&varg0);
    return S_OK;
}