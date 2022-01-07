
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int framebase; int IHTMLFrameElement3_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ HTMLFrameElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int HTMLFrameBase_QI (int *,int ,void**) ;
 int IID_IHTMLFrameElement3 ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,void**) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLFrameElement_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLFrameElement *This = impl_from_HTMLDOMNode(iface);

    if(IsEqualGUID(&IID_IHTMLFrameElement3, riid)) {
        TRACE("(%p)->(IID_IHTMLFrameElement3 %p)\n", This, ppv);
        *ppv = &This->IHTMLFrameElement3_iface;
    }else {
        return HTMLFrameBase_QI(&This->framebase, riid, ppv);
    }

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
