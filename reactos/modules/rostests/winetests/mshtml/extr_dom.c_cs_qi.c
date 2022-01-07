
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int ClientSite ;
 int DocumentSite ;
 int E_NOINTERFACE ;
 int IID_IOleClientSite ;
 int IID_IOleDocumentSite ;
 int IID_IOleInPlaceSite ;
 int IID_IOleWindow ;
 int IID_IUnknown ;
 int InPlaceSite ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;

__attribute__((used)) static HRESULT cs_qi(REFIID riid, void **ppv)
{
    *ppv = ((void*)0);

    if(IsEqualGUID(&IID_IUnknown, riid) || IsEqualGUID(&IID_IOleClientSite, riid))
        *ppv = &ClientSite;
    else if(IsEqualGUID(&IID_IOleDocumentSite, riid))
        *ppv = &DocumentSite;
    else if(IsEqualGUID(&IID_IOleWindow, riid) || IsEqualGUID(&IID_IOleInPlaceSite, riid))
        *ppv = &InPlaceSite;

    return *ppv ? S_OK : E_NOINTERFACE;
}
