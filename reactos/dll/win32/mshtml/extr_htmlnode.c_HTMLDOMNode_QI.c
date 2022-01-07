
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dispex; } ;
struct TYPE_7__ {TYPE_1__ event_target; int IHTMLDOMNode_iface; int IHTMLDOMNode2_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 int IID_IDispatch ;
 int IID_IHTMLDOMNode ;
 int IID_IHTMLDOMNode2 ;
 int IID_IUnknown ;
 int IID_nsCycleCollectionISupports ;
 int IID_nsXPCOMCycleCollectionParticipant ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int NS_OK ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,int ,void**) ;
 int WARN (char*,TYPE_2__*,int ,void**) ;
 int debugstr_mshtml_guid (int ) ;
 scalar_t__ dispex_query_interface (int *,int ,void**) ;
 int node_ccp ;

HRESULT HTMLDOMNode_QI(HTMLDOMNode *This, REFIID riid, void **ppv)
{
    TRACE("(%p)->(%s %p)\n", This, debugstr_mshtml_guid(riid), ppv);

    if(IsEqualGUID(&IID_IUnknown, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
    }else if(IsEqualGUID(&IID_IDispatch, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
    }else if(IsEqualGUID(&IID_IHTMLDOMNode, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
    }else if(IsEqualGUID(&IID_IHTMLDOMNode2, riid)) {
        *ppv = &This->IHTMLDOMNode2_iface;
    }else if(IsEqualGUID(&IID_nsXPCOMCycleCollectionParticipant, riid)) {
        *ppv = &node_ccp;
        return NS_OK;
    }else if(IsEqualGUID(&IID_nsCycleCollectionISupports, riid)) {
        *ppv = &This->IHTMLDOMNode_iface;
        return NS_OK;
    }else if(dispex_query_interface(&This->event_target.dispex, riid, ppv)) {
        return *ppv ? S_OK : E_NOINTERFACE;
    }else {
        *ppv = ((void*)0);
        WARN("(%p)->(%s %p)\n", This, debugstr_mshtml_guid(riid), ppv);
        return E_NOINTERFACE;
    }

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
