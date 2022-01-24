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
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DispatchEx ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ DISPID ;
typedef  int* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static HRESULT FUNC2(DispatchEx *dispex, BSTR name, DWORD flags, DISPID *dispid)
{
    WCHAR *ptr;
    int idx = 0;

    for(ptr = name; *ptr && FUNC1(*ptr); ptr++)
        idx = idx*10 + (*ptr-'0');
    if(*ptr)
        return DISP_E_UNKNOWNNAME;

    *dispid = MSHTML_DISPID_CUSTOM_MIN + idx;
    FUNC0("ret %x\n", *dispid);
    return S_OK;
}