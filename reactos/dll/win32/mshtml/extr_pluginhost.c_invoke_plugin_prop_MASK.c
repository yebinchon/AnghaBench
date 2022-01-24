#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {scalar_t__ props_len; int /*<<< orphan*/ * props; TYPE_1__* plugin_host; } ;
struct TYPE_5__ {int /*<<< orphan*/  disp; } ;
typedef  TYPE_1__ PluginHost ;
typedef  int /*<<< orphan*/  LCID ;
typedef  TYPE_2__ HTMLPluginContainer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  int /*<<< orphan*/  DISPPARAMS ;
typedef  scalar_t__ DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

HRESULT FUNC4(HTMLPluginContainer *plugin_container, DISPID id, LCID lcid, WORD flags, DISPPARAMS *params,
        VARIANT *res, EXCEPINFO *ei)
{
    PluginHost *host;

    host = plugin_container->plugin_host;
    if(!host || !host->disp) {
        FUNC1("Called with no disp\n");
        return E_UNEXPECTED;
    }

    if(!FUNC3(host)) {
        FUNC1("Insecure object\n");
        return E_FAIL;
    }

    if(id < MSHTML_DISPID_CUSTOM_MIN || id > MSHTML_DISPID_CUSTOM_MIN + plugin_container->props_len) {
        FUNC0("Invalid id\n");
        return E_FAIL;
    }

    return FUNC2(host->disp, plugin_container->props[id-MSHTML_DISPID_CUSTOM_MIN], &IID_NULL,
            lcid, flags, params, res, ei, NULL);
}