
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_1__ element; int IHTMLTable3_iface; int IHTMLTable2_iface; int IHTMLTable_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLTable ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int HTMLElement_QI (int *,int ,void**) ;
 int IID_IDispatch ;
 int IID_IHTMLTable ;
 int IID_IHTMLTable2 ;
 int IID_IHTMLTable3 ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,void**) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLTable_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLTable *This = impl_from_HTMLDOMNode(iface);

    *ppv = ((void*)0);

    if(IsEqualGUID(&IID_IUnknown, riid)) {
        TRACE("(%p)->(IID_IUnknown %p)\n", This, ppv);
        *ppv = &This->IHTMLTable_iface;
    }else if(IsEqualGUID(&IID_IDispatch, riid)) {
        TRACE("(%p)->(IID_IDispatch %p)\n", This, ppv);
        *ppv = &This->IHTMLTable_iface;
    }else if(IsEqualGUID(&IID_IHTMLTable, riid)) {
        TRACE("(%p)->(IID_IHTMLTable %p)\n", This, ppv);
        *ppv = &This->IHTMLTable_iface;
    }else if(IsEqualGUID(&IID_IHTMLTable2, riid)) {
        TRACE("(%p)->(IID_IHTMLTable2 %p)\n", This, ppv);
        *ppv = &This->IHTMLTable2_iface;
    }else if(IsEqualGUID(&IID_IHTMLTable3, riid)) {
        TRACE("(%p)->(IID_IHTMLTable3 %p)\n", This, ppv);
        *ppv = &This->IHTMLTable3_iface;
    }

    if(*ppv) {
        IUnknown_AddRef((IUnknown*)*ppv);
        return S_OK;
    }

    return HTMLElement_QI(&This->element.node, riid, ppv);
}
