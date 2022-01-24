#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nsresult ;
typedef  int /*<<< orphan*/  nsIDOMNodeList ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsIDOMHTMLScriptElement ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT32 ;
struct TYPE_20__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
struct TYPE_25__ {TYPE_1__ dispex; } ;
struct TYPE_24__ {int /*<<< orphan*/  nsdoc; } ;
struct TYPE_21__ {int /*<<< orphan*/  node; } ;
struct TYPE_23__ {TYPE_2__ element; } ;
struct TYPE_22__ {int /*<<< orphan*/  IHTMLScriptElement_iface; } ;
typedef  char PRUnichar ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  TYPE_3__ HTMLScriptElement ;
typedef  TYPE_4__ HTMLPluginContainer ;
typedef  TYPE_5__ HTMLDocumentNode ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_6__ EventTarget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_HTMLPluginContainer ; 
 int /*<<< orphan*/  IID_nsIDOMHTMLScriptElement ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ NS_OK ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC12 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__**) ; 

void FUNC25(HTMLDocumentNode *doc)
{
    HTMLPluginContainer *plugin_container;
    nsIDOMHTMLScriptElement *nsscript;
    HTMLScriptElement *script_elem;
    EventTarget *event_target;
    nsIDOMNodeList *node_list;
    nsIDOMNode *script_node;
    nsAString selector_str;
    IDispatch *event_disp;
    UINT32 length, i;
    WCHAR *event;
    nsresult nsres;
    HRESULT hres;

    static const PRUnichar selectorW[] = {'s','c','r','i','p','t','[','e','v','e','n','t',']',0};

    FUNC8("%p\n", doc);

    if(!doc->nsdoc)
        return;

    FUNC16(&selector_str, selectorW);
    nsres = FUNC17(doc->nsdoc, &selector_str, &node_list);
    FUNC15(&selector_str);
    if(FUNC6(nsres)) {
        FUNC0("QuerySelectorAll failed: %08x\n", nsres);
        return;
    }

    if(!node_list)
        return;

    nsres = FUNC18(node_list, &length);
    FUNC9(nsres == NS_OK);

    for(i=0; i < length; i++) {
        nsres = FUNC19(node_list, i, &script_node);
        if(FUNC6(nsres) || !script_node) {
            FUNC0("Item(%d) failed: %08x\n", i, nsres);
            continue;
        }

        nsres = FUNC21(script_node, &IID_nsIDOMHTMLScriptElement, (void**)&nsscript);
        FUNC9(nsres == NS_OK);
        FUNC22(script_node);

        hres = FUNC24(doc, nsscript, &script_elem);
        if(FUNC1(hres))
            continue;

        event_disp = FUNC23(doc, script_elem, &event);
        if(event_disp) {
            event_target = FUNC12(doc, script_elem);
            if(event_target) {
                hres = FUNC2(&event_target->dispex.IDispatchEx_iface, &IID_HTMLPluginContainer,
                        (void**)&plugin_container);
                if(FUNC7(hres))
                    FUNC10(doc, plugin_container, event, event_disp);
                else
                    FUNC11(doc, event_target, event, event_disp);

                FUNC3(&event_target->dispex.IDispatchEx_iface);
                if(plugin_container)
                    FUNC14(&plugin_container->element.node);
            }

            FUNC13(event);
            FUNC4(event_disp);
        }

        FUNC5(&script_elem->IHTMLScriptElement_iface);
    }

    FUNC20(node_list);
}