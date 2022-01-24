#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* element; } ;
struct TYPE_6__ {int /*<<< orphan*/  nselem; } ;
struct TYPE_7__ {TYPE_1__ element; } ;
typedef  TYPE_3__ PluginHost ;
typedef  int /*<<< orphan*/  IPropertyBag ;
typedef  int /*<<< orphan*/  IPersistPropertyBag ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(PluginHost *host, IPersistPropertyBag *persist_prop_bag)
{
    IPropertyBag *prop_bag;
    HRESULT hres;

    hres = FUNC6(host->element->element.nselem, &prop_bag);
    if(FUNC0(hres))
        return;

    if(prop_bag && !FUNC5(host)) {
        FUNC3(prop_bag);
        prop_bag = NULL;
    }

    if(prop_bag) {
        hres = FUNC2(persist_prop_bag, prop_bag, NULL);
        FUNC3(prop_bag);
        if(FUNC0(hres))
            FUNC4("Load failed: %08x\n", hres);
    }else {
        hres = FUNC1(persist_prop_bag);
        if(FUNC0(hres))
            FUNC4("InitNew failed: %08x\n", hres);
    }
}