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
typedef  int /*<<< orphan*/  VARTYPE ;
typedef  int /*<<< orphan*/  VARIANTARG ;
struct TYPE_3__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYGET ; 
 int /*<<< orphan*/  DISPID_VALUE ; 
 int /*<<< orphan*/  DISP_E_BADVARTYPE ; 
 int /*<<< orphan*/  DISP_E_TYPEMISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(IDispatch* pdispIn, LCID lcid, void* pOut,
                                VARTYPE vt, DWORD dwFlags)
{
  static DISPPARAMS emptyParams = { NULL, NULL, 0, 0 };
  VARIANTARG srcVar, dstVar;
  HRESULT hRet;

  if (!pdispIn)
    return DISP_E_BADVARTYPE;

  /* Get the default 'value' property from the IDispatch */
  FUNC5(&srcVar);
  hRet = FUNC0(pdispIn, DISPID_VALUE, &IID_NULL, lcid, DISPATCH_PROPERTYGET,
                          &emptyParams, &srcVar, NULL, NULL);

  if (FUNC1(hRet))
  {
    /* Convert the property to the requested type */
    FUNC5(&dstVar);
    hRet = FUNC3(&dstVar, &srcVar, lcid, dwFlags, vt);
    FUNC4(&srcVar);

    if (FUNC1(hRet))
      FUNC2(&dstVar, vt, pOut);
  }
  else
    hRet = DISP_E_TYPEMISMATCH;
  return hRet;
}