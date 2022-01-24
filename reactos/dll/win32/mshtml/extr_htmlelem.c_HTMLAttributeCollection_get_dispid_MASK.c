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
struct TYPE_3__ {int /*<<< orphan*/  IHTMLDOMAttribute_iface; } ;
typedef  scalar_t__ LONG ;
typedef  TYPE_1__ HTMLDOMAttribute ;
typedef  int /*<<< orphan*/  HTMLAttributeCollection ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DispatchEx ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,TYPE_1__**) ; 

__attribute__((used)) static HRESULT FUNC7(DispatchEx *dispex, BSTR name, DWORD flags, DISPID *dispid)
{
    HTMLAttributeCollection *This = FUNC1(dispex);
    HTMLDOMAttribute *attr;
    LONG pos;
    HRESULT hres;

    FUNC3("(%p)->(%s %x %p)\n", This, FUNC4(name), flags, dispid);

    hres = FUNC5(This, name, dispid);
    if(FUNC0(hres))
        return hres;

    hres = FUNC6(This, *dispid, &pos, &attr);
    if(FUNC0(hres))
        return hres;
    FUNC2(&attr->IHTMLDOMAttribute_iface);

    *dispid = MSHTML_DISPID_CUSTOM_MIN+pos;
    return S_OK;
}