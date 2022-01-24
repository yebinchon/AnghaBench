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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  int /*<<< orphan*/  DISPPARAMS ;

/* Variables and functions */
 int DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISP_E_MEMBERNOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC2(WORD wFlags,
                                         DISPPARAMS* pDispParams,
                                         VARIANT* pVarResult,
                                         EXCEPINFO* pExcepInfo,
                                         UINT* puArgErr)
{
    if (!(wFlags & DISPATCH_METHOD))
        return DISP_E_MEMBERNOTFOUND;

    FUNC0("\n");

    FUNC1(pVarResult);
    return S_OK;
}