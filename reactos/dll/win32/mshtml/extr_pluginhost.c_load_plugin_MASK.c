#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  plugin_unk; } ;
typedef  TYPE_1__ PluginHost ;
typedef  int /*<<< orphan*/  IPersistPropertyBag2 ;
typedef  int /*<<< orphan*/  IPersistPropertyBag ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IID_IPersistPropertyBag ; 
 int /*<<< orphan*/  IID_IPersistPropertyBag2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(PluginHost *host)
{
    IPersistPropertyBag2 *persist_prop_bag2;
    IPersistPropertyBag *persist_prop_bag;
    HRESULT hres;

    hres = FUNC3(host->plugin_unk, &IID_IPersistPropertyBag2, (void**)&persist_prop_bag2);
    if(FUNC4(hres)) {
        FUNC0("Use IPersistPropertyBag2 iface\n");
        FUNC1(persist_prop_bag2);
        return;
    }

    hres = FUNC3(host->plugin_unk, &IID_IPersistPropertyBag, (void**)&persist_prop_bag);
    if(FUNC4(hres)) {
        FUNC5(host, persist_prop_bag);
        FUNC2(persist_prop_bag);
        return;
    }

    FUNC0("No IPersistPropertyBag iface\n");
}