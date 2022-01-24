#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  node; } ;
struct TYPE_9__ {TYPE_2__* plugin_host; TYPE_1__ element; } ;
struct TYPE_10__ {int /*<<< orphan*/  IHTMLObjectElement_iface; TYPE_3__ plugin_container; int /*<<< orphan*/  IHTMLObjectElement2_iface; } ;
struct TYPE_8__ {scalar_t__ plugin_unk; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_4__ HTMLObjectElement ;
typedef  int /*<<< orphan*/  HTMLDOMNode ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  IID_HTMLPluginContainer ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_IHTMLObjectElement ; 
 int /*<<< orphan*/  IID_IHTMLObjectElement2 ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_4__*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC11(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLObjectElement *This = FUNC8(iface);

    FUNC6("(%p)->(%s %p)\n", This, FUNC7(riid), ppv);

    if(FUNC5(&IID_IUnknown, riid)) {
        *ppv = &This->IHTMLObjectElement_iface;
    }else if(FUNC5(&IID_IDispatch, riid)) {
        *ppv = &This->IHTMLObjectElement_iface;
    }else if(FUNC5(&IID_IHTMLObjectElement, riid)) {
        *ppv = &This->IHTMLObjectElement_iface;
    }else if(FUNC5(&IID_IHTMLObjectElement2, riid)) {
        *ppv = &This->IHTMLObjectElement2_iface;
    }else if(FUNC5(&IID_HTMLPluginContainer, riid)) {
        /* Special pseudo-interface returning HTMLPluginContainse struct. */
        *ppv = &This->plugin_container;
        FUNC9(&This->plugin_container.element.node);
        return S_OK;
    }else {
        HRESULT hres;

        hres = FUNC1(&This->plugin_container.element.node, riid, ppv);
        if(hres == E_NOINTERFACE && This->plugin_container.plugin_host && This->plugin_container.plugin_host->plugin_unk) {
            IUnknown *plugin_iface, *ret;

            hres = FUNC3(This->plugin_container.plugin_host->plugin_unk, riid, (void**)&plugin_iface);
            if(hres == S_OK) {
                hres = FUNC10(plugin_iface, (IUnknown*)&This->IHTMLObjectElement_iface, &ret);
                FUNC4(plugin_iface);
                if(FUNC0(hres))
                    return hres;

                FUNC6("returning plugin iface %p wrapped to %p\n", plugin_iface, ret);
                *ppv = ret;
                return S_OK;
            }
        }

        return hres;
    }

    FUNC2((IUnknown*)*ppv);
    return S_OK;
}