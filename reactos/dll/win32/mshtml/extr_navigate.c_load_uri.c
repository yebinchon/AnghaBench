
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef int HTMLOuterWindow ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 scalar_t__ FAILED (int ) ;
 int IUri_GetDisplayUri (int *,int *) ;
 int SysFreeString (int ) ;
 int navigate_uri (int *,int *,int ,int *,int ) ;

HRESULT load_uri(HTMLOuterWindow *window, IUri *uri, DWORD flags)
{
    BSTR display_uri;
    HRESULT hres;

    hres = IUri_GetDisplayUri(uri, &display_uri);
    if(FAILED(hres))
        return hres;

    hres = navigate_uri(window, uri, display_uri, ((void*)0), flags);
    SysFreeString(display_uri);
    return hres;
}
