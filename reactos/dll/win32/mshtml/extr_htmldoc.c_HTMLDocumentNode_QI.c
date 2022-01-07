
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; int IInternetHostSecurityManager_iface; int basedoc; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ HTMLDocumentNode ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 int HTMLDOMNode_QI (int *,int ,void**) ;
 int IID_IInternetHostSecurityManager ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,int ,void**) ;
 int debugstr_mshtml_guid (int ) ;
 scalar_t__ htmldoc_qi (int *,int ,void**) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLDocumentNode_QI(HTMLDOMNode *iface, REFIID riid, void **ppv)
{
    HTMLDocumentNode *This = impl_from_HTMLDOMNode(iface);

    TRACE("(%p)->(%s %p)\n", This, debugstr_mshtml_guid(riid), ppv);

    if(htmldoc_qi(&This->basedoc, riid, ppv))
        return *ppv ? S_OK : E_NOINTERFACE;

    if(IsEqualGUID(&IID_IInternetHostSecurityManager, riid))
        *ppv = &This->IInternetHostSecurityManager_iface;
    else
        return HTMLDOMNode_QI(&This->node, riid, ppv);

    IUnknown_AddRef((IUnknown*)*ppv);
    return S_OK;
}
