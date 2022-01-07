
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int node; } ;
struct TYPE_9__ {TYPE_2__* plugin_host; TYPE_1__ element; } ;
struct TYPE_10__ {int IHTMLObjectElement_iface; TYPE_3__ plugin_container; int IHTMLObjectElement2_iface; } ;
struct TYPE_8__ {scalar_t__ plugin_unk; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_4__ HTMLObjectElement ;
typedef int HTMLDOMNode ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOINTERFACE ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ HTMLElement_QI (int *,int ,void**) ;
 int IID_HTMLPluginContainer ;
 int IID_IDispatch ;
 int IID_IHTMLObjectElement ;
 int IID_IHTMLObjectElement2 ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IUnknown_QueryInterface (scalar_t__,int ,void**) ;
 int IUnknown_Release (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 scalar_t__ S_OK ;
 int TRACE (char*,TYPE_4__*,int *,...) ;
 int debugstr_mshtml_guid (int ) ;
 TYPE_4__* impl_from_HTMLDOMNode (int *) ;
 int node_addref (int *) ;
 scalar_t__ wrap_iface (int *,int *,int **) ;

__attribute__((used)) static HRESULT HTMLObjectElement_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLObjectElement *This = impl_from_HTMLDOMNode(iface);

    TRACE("(%p)->(%s %p)\n", This, debugstr_mshtml_guid(riid), ppv);

    if(IsEqualGUID(&IID_IUnknown, riid)) {
        *ppv = &This->IHTMLObjectElement_iface;
    }else if(IsEqualGUID(&IID_IDispatch, riid)) {
        *ppv = &This->IHTMLObjectElement_iface;
    }else if(IsEqualGUID(&IID_IHTMLObjectElement, riid)) {
        *ppv = &This->IHTMLObjectElement_iface;
    }else if(IsEqualGUID(&IID_IHTMLObjectElement2, riid)) {
        *ppv = &This->IHTMLObjectElement2_iface;
    }else if(IsEqualGUID(&IID_HTMLPluginContainer, riid)) {

        *ppv = &This->plugin_container;
        node_addref(&This->plugin_container.element.node);
        return S_OK;
    }else {
        HRESULT hres;

        hres = HTMLElement_QI(&This->plugin_container.element.node, riid, ppv);
        if(hres == E_NOINTERFACE && This->plugin_container.plugin_host && This->plugin_container.plugin_host->plugin_unk) {
            IUnknown *plugin_iface, *ret;

            hres = IUnknown_QueryInterface(This->plugin_container.plugin_host->plugin_unk, riid, (void**)&plugin_iface);
            if(hres == S_OK) {
                hres = wrap_iface(plugin_iface, (IUnknown*)&This->IHTMLObjectElement_iface, &ret);
                IUnknown_Release(plugin_iface);
                if(FAILED(hres))
                    return hres;

                TRACE("returning plugin iface %p wrapped to %p\n", plugin_iface, ret);
                *ppv = ret;
                return S_OK;
            }
        }

        return hres;
    }

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
