
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
typedef int nsIPluginInstance ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMElement ;
struct TYPE_3__ {scalar_t__ ndata; } ;
typedef TYPE_1__* NPP ;


 int ERR (char*,int ) ;
 int IID_nsIDOMHTMLElement ;
 int IID_nsIPluginInstance ;
 scalar_t__ NS_FAILED (int ) ;
 int nsIDOMElement_QueryInterface (int *,int *,void**) ;
 int nsIDOMElement_Release (int *) ;
 int nsIPluginInstance_GetDOMElement (int *,int **) ;
 int nsIPluginInstance_Release (int *) ;
 int nsISupports_QueryInterface (int *,int *,void**) ;

__attribute__((used)) static nsIDOMHTMLElement *get_dom_element(NPP instance)
{
    nsISupports *instance_unk = (nsISupports*)instance->ndata;
    nsIPluginInstance *plugin_instance;
    nsIDOMHTMLElement *html_elem;
    nsIDOMElement *elem;
    nsresult nsres;

    nsres = nsISupports_QueryInterface(instance_unk, &IID_nsIPluginInstance, (void**)&plugin_instance);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIPluginInstance interface: %08x\n", nsres);
        return ((void*)0);
    }

    nsres = nsIPluginInstance_GetDOMElement(plugin_instance, &elem);
    nsIPluginInstance_Release(plugin_instance);
    if(NS_FAILED(nsres)) {
        ERR("GetDOMElement failed: %08x\n", nsres);
        return ((void*)0);
    }

    nsres = nsIDOMElement_QueryInterface(elem, &IID_nsIDOMHTMLElement, (void**)&html_elem);
    nsIDOMElement_Release(elem);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMHTMLElement iface: %08x\n", nsres);
        return ((void*)0);
    }

    return html_elem;
}
