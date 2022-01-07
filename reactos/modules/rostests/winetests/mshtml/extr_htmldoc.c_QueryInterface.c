
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int ClientSite ;
 int Dispatch ;
 int DocHostUIHandler ;
 int DocumentSite ;
 int E_NOINTERFACE ;
 int IID_IDispatch ;
 int IID_IDocHostShowUI ;
 int IID_IDocHostUIHandler ;
 int IID_IDocHostUIHandler2 ;
 int IID_IDocHostUIHandlerPriv ;
 int IID_IOleClientSite ;
 int IID_IOleCommandTarget ;
 int IID_IOleContainer ;
 int IID_IOleControlSite ;
 int IID_IOleDocumentSite ;
 int IID_IOleInPlaceSite ;
 int IID_IOleInPlaceSiteEx ;
 int IID_IOleInPlaceSiteWindowless ;
 int IID_IOleWindow ;
 int IID_IProxyManager ;
 int IID_IRenMailEditor ;
 int IID_IServiceProvider ;
 int IID_IThumbnailView ;
 int IID_IUnknown ;
 int IID_unk1 ;
 int IID_unk4 ;
 int IID_unk5 ;
 int InPlaceSiteWindowless ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int OleCommandTarget ;
 int OleContainer ;
 int OleControlSite ;
 int S_OK ;
 int ServiceProvider ;
 scalar_t__ ipsex ;
 scalar_t__ ipsw ;
 int trace (char*,int ) ;
 int wine_dbgstr_guid (int ) ;

__attribute__((used)) static HRESULT QueryInterface(REFIID riid, void **ppv)
{
    *ppv = ((void*)0);

    if(IsEqualGUID(&IID_IUnknown, riid) || IsEqualGUID(&IID_IOleClientSite, riid))
        *ppv = &ClientSite;
    else if(IsEqualGUID(&IID_IOleDocumentSite, riid))
        *ppv = &DocumentSite;
    else if(IsEqualGUID(&IID_IDocHostUIHandler, riid) || IsEqualGUID(&IID_IDocHostUIHandler2, riid))
        *ppv = &DocHostUIHandler;
    else if(IsEqualGUID(&IID_IOleContainer, riid))
        *ppv = &OleContainer;
    else if(IsEqualGUID(&IID_IOleWindow, riid) || IsEqualGUID(&IID_IOleInPlaceSite, riid))
        *ppv = &InPlaceSiteWindowless;
    else if(IsEqualGUID(&IID_IOleCommandTarget , riid))
        *ppv = &OleCommandTarget;
    else if(IsEqualGUID(&IID_IDispatch, riid))
        *ppv = &Dispatch;
    else if(IsEqualGUID(&IID_IServiceProvider, riid))
        *ppv = &ServiceProvider;
    else if(IsEqualGUID(&IID_IOleInPlaceSiteEx, riid))
        *ppv = ipsex ? &InPlaceSiteWindowless : ((void*)0);
    else if(IsEqualGUID(&IID_IOleInPlaceSiteWindowless, riid))
        *ppv = ipsw ? &InPlaceSiteWindowless : ((void*)0);
    else if(IsEqualGUID(&IID_IOleControlSite, riid))
        *ppv = &OleControlSite;
    else if(IsEqualGUID(&IID_IDocHostShowUI, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_IProxyManager, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_unk1, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_IThumbnailView, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_IRenMailEditor, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_unk4, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_unk5, riid))
        return E_NOINTERFACE;
    else if(IsEqualGUID(&IID_IDocHostUIHandlerPriv, riid))
        return E_NOINTERFACE;
    else
        trace("QI(%s)\n", wine_dbgstr_guid(riid));

    if(*ppv)
        return S_OK;
    return E_NOINTERFACE;
}
