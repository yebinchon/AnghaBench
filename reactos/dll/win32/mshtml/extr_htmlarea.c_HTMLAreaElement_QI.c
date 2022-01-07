
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_1__ element; int IHTMLAreaElement_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef int HTMLDOMNode ;
typedef TYPE_2__ HTMLAreaElement ;
typedef int HRESULT ;


 int HTMLElement_QI (int *,int ,void**) ;
 int IID_IHTMLAreaElement ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,void**) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLAreaElement_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLAreaElement *This = impl_from_HTMLDOMNode(iface);

    *ppv = ((void*)0);

    if(IsEqualGUID(&IID_IHTMLAreaElement, riid)) {
        TRACE("(%p)->(IID_IHTMLAreaElement %p)\n", This, ppv);
        *ppv = &This->IHTMLAreaElement_iface;
    }else {
        return HTMLElement_QI(&This->element.node, riid, ppv);
    }

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
