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
typedef  int WCHAR ;
typedef  int UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/  nslist; } ;
typedef  TYPE_1__ HTMLDOMChildrenCollection ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DispatchEx ;
typedef  int DWORD ;
typedef  scalar_t__ DISPID ;
typedef  int* BSTR ;

/* Variables and functions */
 scalar_t__ DISPID_CHILDCOL_0 ; 
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static HRESULT FUNC4(DispatchEx *dispex, BSTR name, DWORD flags, DISPID *dispid)
{
    HTMLDOMChildrenCollection *This = FUNC1(dispex);
    WCHAR *ptr;
    DWORD idx=0;
    UINT32 len = 0;

    for(ptr = name; *ptr && FUNC2(*ptr); ptr++)
        idx = idx*10 + (*ptr-'0');
    if(*ptr)
        return DISP_E_UNKNOWNNAME;

    FUNC3(This->nslist, &len);
    if(idx >= len)
        return DISP_E_UNKNOWNNAME;

    *dispid = DISPID_CHILDCOL_0 + idx;
    FUNC0("ret %x\n", *dispid);
    return S_OK;
}