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
struct TYPE_6__ {TYPE_1__* plugin_host; } ;
struct TYPE_5__ {int /*<<< orphan*/ * disp; } ;
typedef  TYPE_1__ PluginHost ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_2__ HTMLPluginContainer ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

HRESULT FUNC4(HTMLPluginContainer *plugin_container, IDispatch **ret)
{
    PluginHost *host;

    host = plugin_container->plugin_host;
    if(!host) {
        FUNC0("No plugin host\n");
        return E_UNEXPECTED;
    }

    if(!host->disp) {
        *ret = NULL;
        return S_OK;
    }

    if(!FUNC3(host)) {
        FUNC1("Insecure object\n");
        return E_FAIL;
    }

    FUNC2(host->disp);
    *ret = host->disp;
    return S_OK;
}