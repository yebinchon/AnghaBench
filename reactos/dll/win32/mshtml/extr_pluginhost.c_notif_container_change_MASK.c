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
struct TYPE_5__ {int /*<<< orphan*/  plugin_unk; } ;
struct TYPE_4__ {TYPE_2__* plugin_host; } ;
typedef  int /*<<< orphan*/  IOleControl ;
typedef  TYPE_1__ HTMLPluginContainer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IOleControl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(HTMLPluginContainer *plugin_container, DISPID dispid)
{
    IOleControl *ole_control;
    HRESULT hres;

    if(!plugin_container->plugin_host || !plugin_container->plugin_host->plugin_unk)
        return;

    FUNC4(plugin_container->plugin_host);

    hres = FUNC2(plugin_container->plugin_host->plugin_unk, &IID_IOleControl, (void**)&ole_control);
    if(FUNC3(hres)) {
        FUNC0(ole_control, dispid);
        FUNC1(ole_control);
    }
}