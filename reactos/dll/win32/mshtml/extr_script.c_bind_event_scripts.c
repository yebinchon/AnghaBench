
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMNodeList ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLScriptElement ;
typedef int nsAString ;
typedef int WCHAR ;
typedef scalar_t__ UINT32 ;
struct TYPE_20__ {int IDispatchEx_iface; } ;
struct TYPE_25__ {TYPE_1__ dispex; } ;
struct TYPE_24__ {int nsdoc; } ;
struct TYPE_21__ {int node; } ;
struct TYPE_23__ {TYPE_2__ element; } ;
struct TYPE_22__ {int IHTMLScriptElement_iface; } ;
typedef char PRUnichar ;
typedef int IDispatch ;
typedef TYPE_3__ HTMLScriptElement ;
typedef TYPE_4__ HTMLPluginContainer ;
typedef TYPE_5__ HTMLDocumentNode ;
typedef int HRESULT ;
typedef TYPE_6__ EventTarget ;


 int ERR (char*,scalar_t__,...) ;
 scalar_t__ FAILED (int ) ;
 int IDispatchEx_QueryInterface (int *,int *,void**) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_Release (int *) ;
 int IHTMLScriptElement_Release (int *) ;
 int IID_HTMLPluginContainer ;
 int IID_nsIDOMHTMLScriptElement ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,TYPE_5__*) ;
 int assert (int) ;
 int bind_activex_event (TYPE_5__*,TYPE_4__*,int *,int *) ;
 int bind_target_event (TYPE_5__*,TYPE_6__*,int *,int *) ;
 TYPE_6__* find_event_target (TYPE_5__*,TYPE_3__*) ;
 int heap_free (int *) ;
 int node_release (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,char const*) ;
 scalar_t__ nsIDOMHTMLDocument_QuerySelectorAll (int ,int *,int **) ;
 scalar_t__ nsIDOMNodeList_GetLength (int *,scalar_t__*) ;
 scalar_t__ nsIDOMNodeList_Item (int *,scalar_t__,int **) ;
 int nsIDOMNodeList_Release (int *) ;
 scalar_t__ nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;
 int * parse_event_elem (TYPE_5__*,TYPE_3__*,int **) ;
 int script_elem_from_nsscript (TYPE_5__*,int *,TYPE_3__**) ;

void bind_event_scripts(HTMLDocumentNode *doc)
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

    TRACE("%p\n", doc);

    if(!doc->nsdoc)
        return;

    nsAString_InitDepend(&selector_str, selectorW);
    nsres = nsIDOMHTMLDocument_QuerySelectorAll(doc->nsdoc, &selector_str, &node_list);
    nsAString_Finish(&selector_str);
    if(NS_FAILED(nsres)) {
        ERR("QuerySelectorAll failed: %08x\n", nsres);
        return;
    }

    if(!node_list)
        return;

    nsres = nsIDOMNodeList_GetLength(node_list, &length);
    assert(nsres == NS_OK);

    for(i=0; i < length; i++) {
        nsres = nsIDOMNodeList_Item(node_list, i, &script_node);
        if(NS_FAILED(nsres) || !script_node) {
            ERR("Item(%d) failed: %08x\n", i, nsres);
            continue;
        }

        nsres = nsIDOMNode_QueryInterface(script_node, &IID_nsIDOMHTMLScriptElement, (void**)&nsscript);
        assert(nsres == NS_OK);
        nsIDOMNode_Release(script_node);

        hres = script_elem_from_nsscript(doc, nsscript, &script_elem);
        if(FAILED(hres))
            continue;

        event_disp = parse_event_elem(doc, script_elem, &event);
        if(event_disp) {
            event_target = find_event_target(doc, script_elem);
            if(event_target) {
                hres = IDispatchEx_QueryInterface(&event_target->dispex.IDispatchEx_iface, &IID_HTMLPluginContainer,
                        (void**)&plugin_container);
                if(SUCCEEDED(hres))
                    bind_activex_event(doc, plugin_container, event, event_disp);
                else
                    bind_target_event(doc, event_target, event, event_disp);

                IDispatchEx_Release(&event_target->dispex.IDispatchEx_iface);
                if(plugin_container)
                    node_release(&plugin_container->element.node);
            }

            heap_free(event);
            IDispatch_Release(event_disp);
        }

        IHTMLScriptElement_Release(&script_elem->IHTMLScriptElement_iface);
    }

    nsIDOMNodeList_Release(node_list);
}
