
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REFIID ;
typedef int HRESULT ;


 int BrowserService ;
 int DocObjectService ;
 int E_NOINTERFACE ;
 int IID_IBrowserService ;
 int IID_IDocObjectService ;
 int IID_IShellBrowser ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int ShellBrowser ;

__attribute__((used)) static HRESULT browserservice_qi(REFIID riid, void **ppv)
{
    if(IsEqualGUID(&IID_IShellBrowser, riid)) {
        *ppv = &ShellBrowser;
        return S_OK;
    }

    if(IsEqualGUID(&IID_IDocObjectService, riid)) {
        *ppv = &DocObjectService;
        return S_OK;
    }

    if(IsEqualGUID(&IID_IBrowserService, riid)) {
        *ppv = &BrowserService;
        return S_OK;
    }

    *ppv = ((void*)0);
    return E_NOINTERFACE;
}
