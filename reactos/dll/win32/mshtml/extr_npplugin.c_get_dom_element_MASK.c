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
typedef  int /*<<< orphan*/  nsresult ;
typedef  int /*<<< orphan*/  nsISupports ;
typedef  int /*<<< orphan*/  nsIPluginInstance ;
typedef  int /*<<< orphan*/  nsIDOMHTMLElement ;
typedef  int /*<<< orphan*/  nsIDOMElement ;
struct TYPE_3__ {scalar_t__ ndata; } ;
typedef  TYPE_1__* NPP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLElement ; 
 int /*<<< orphan*/  IID_nsIPluginInstance ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 

__attribute__((used)) static nsIDOMHTMLElement *FUNC7(NPP instance)
{
    nsISupports *instance_unk = (nsISupports*)instance->ndata;
    nsIPluginInstance *plugin_instance;
    nsIDOMHTMLElement *html_elem;
    nsIDOMElement *elem;
    nsresult nsres;

    nsres = FUNC6(instance_unk, &IID_nsIPluginInstance, (void**)&plugin_instance);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIPluginInstance interface: %08x\n", nsres);
        return NULL;
    }

    nsres = FUNC4(plugin_instance, &elem);
    FUNC5(plugin_instance);
    if(FUNC1(nsres)) {
        FUNC0("GetDOMElement failed: %08x\n", nsres);
        return NULL;
    }

    nsres = FUNC2(elem, &IID_nsIDOMHTMLElement, (void**)&html_elem);
    FUNC3(elem);
    if(FUNC1(nsres)) {
        FUNC0("Could not get nsIDOMHTMLElement iface: %08x\n", nsres);
        return NULL;
    }

    return html_elem;
}