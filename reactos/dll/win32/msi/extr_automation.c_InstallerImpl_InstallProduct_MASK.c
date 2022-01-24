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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  int /*<<< orphan*/  DISPPARAMS ;

/* Variables and functions */
 int DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 int /*<<< orphan*/  DISP_E_MEMBERNOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_BSTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(WORD wFlags,
                                            DISPPARAMS* pDispParams,
                                            VARIANT* pVarResult,
                                            EXCEPINFO* pExcepInfo,
                                            UINT* puArgErr)
{
    UINT ret;
    HRESULT hr;
    VARIANTARG varg0, varg1;

    if (!(wFlags & DISPATCH_METHOD))
        return DISP_E_MEMBERNOTFOUND;

    FUNC5(&varg0);
    hr = FUNC0(pDispParams, 0, VT_BSTR, &varg0, puArgErr);
    if (FUNC1(hr))
        return hr;

    FUNC5(&varg1);
    hr = FUNC0(pDispParams, 1, VT_BSTR, &varg1, puArgErr);
    if (FUNC1(hr))
        goto done;

    ret = FUNC2(FUNC3(&varg0), FUNC3(&varg1));
    if (ret != ERROR_SUCCESS)
    {
        hr = DISP_E_EXCEPTION;
        goto done;
    }

done:
    FUNC4(&varg0);
    FUNC4(&varg1);
    return hr;
}