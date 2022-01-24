#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {size_t props_len; scalar_t__* props; int props_size; TYPE_1__* plugin_host; } ;
struct TYPE_4__ {int /*<<< orphan*/ * disp; } ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_2__ HTMLPluginContainer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  size_t DWORD ;
typedef  scalar_t__ DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC5 (int) ; 
 scalar_t__* FUNC6 (scalar_t__*,int) ; 

HRESULT FUNC7(HTMLPluginContainer *plugin_container, WCHAR *name, DISPID *ret)
{
    IDispatch *disp;
    DISPID id;
    DWORD i;
    HRESULT hres;

    if(!plugin_container->plugin_host) {
        FUNC3("no plugin host\n");
        return DISP_E_UNKNOWNNAME;
    }

    disp = plugin_container->plugin_host->disp;
    if(!disp)
        return DISP_E_UNKNOWNNAME;

    hres = FUNC1(disp, &IID_NULL, &name, 1, 0, &id);
    if(FUNC0(hres)) {
        FUNC2("no prop %s\n", FUNC4(name));
        return DISP_E_UNKNOWNNAME;
    }

    for(i=0; i < plugin_container->props_len; i++) {
        if(id == plugin_container->props[i]) {
            *ret = MSHTML_DISPID_CUSTOM_MIN+i;
            return S_OK;
        }
    }

    if(!plugin_container->props) {
        plugin_container->props = FUNC5(8*sizeof(DISPID));
        if(!plugin_container->props)
            return E_OUTOFMEMORY;
        plugin_container->props_size = 8;
    }else if(plugin_container->props_len == plugin_container->props_size) {
        DISPID *new_props;

        new_props = FUNC6(plugin_container->props, plugin_container->props_size*2*sizeof(DISPID));
        if(!new_props)
            return E_OUTOFMEMORY;

        plugin_container->props = new_props;
        plugin_container->props_size *= 2;
    }

    plugin_container->props[plugin_container->props_len] = id;
    *ret = MSHTML_DISPID_CUSTOM_MIN+plugin_container->props_len;
    plugin_container->props_len++;
    return S_OK;
}