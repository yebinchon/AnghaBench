
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_1__ element; int IHTMLHeadElement_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLHeadElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int HTMLElement_QI (int *,int ,void**) ;
 int IID_IHTMLHeadElement ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int ,void**) ;
 int debugstr_mshtml_guid (int ) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLHeadElement_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLHeadElement *This = impl_from_HTMLDOMNode(iface);

    TRACE("(%p)->(%s %p)\n", This, debugstr_mshtml_guid(riid), ppv);

    if(IsEqualGUID(&IID_IHTMLHeadElement, riid))
        *ppv = &This->IHTMLHeadElement_iface;
    else
        return HTMLElement_QI(&This->element.node, riid, ppv);

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
