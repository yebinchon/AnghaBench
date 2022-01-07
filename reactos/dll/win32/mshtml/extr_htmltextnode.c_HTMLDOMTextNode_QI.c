
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; int IHTMLDOMTextNode2_iface; int IHTMLDOMTextNode_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ HTMLDOMTextNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int HTMLDOMNode_QI (int *,int ,void**) ;
 int IID_IHTMLDOMTextNode ;
 int IID_IHTMLDOMTextNode2 ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,int ,void**) ;
 int debugstr_mshtml_guid (int ) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLDOMTextNode_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLDOMTextNode *This = impl_from_HTMLDOMNode(iface);

    TRACE("(%p)->(%s %p)\n", This, debugstr_mshtml_guid(riid), ppv);

    if(IsEqualGUID(&IID_IHTMLDOMTextNode, riid))
        *ppv = &This->IHTMLDOMTextNode_iface;
    else if(IsEqualGUID(&IID_IHTMLDOMTextNode2, riid))
        *ppv = &This->IHTMLDOMTextNode2_iface;
    else
        return HTMLDOMNode_QI(&This->node, riid, ppv);

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
