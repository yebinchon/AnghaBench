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
typedef  int /*<<< orphan*/  READYSTATE ;
typedef  int /*<<< orphan*/  IPropertyNotifySink ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_READYSTATE ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  client_site ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  plugin_readystate ; 

__attribute__((used)) static void FUNC4(READYSTATE state)
{
    IPropertyNotifySink *prop_notif;
    HRESULT hres;

    plugin_readystate = state;

    hres = FUNC0(client_site, &IID_IPropertyNotifySink, (void**)&prop_notif);
    FUNC3(hres == S_OK, "Could not get IPropertyNotifySink iface: %08x\n", hres);

    hres = FUNC1(prop_notif, DISPID_READYSTATE);
    FUNC3(hres == S_OK, "OnChanged(DISPID_READYSTATE) failed: %08x\n", hres);

    FUNC2(prop_notif);
}