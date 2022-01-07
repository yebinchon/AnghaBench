
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int IUri ;
typedef int HTMLOuterWindow ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 int CoInternetCombineUrlEx (int *,int const*,int,int **,int ) ;
 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int SysFreeString (int ) ;
 int URL_DONT_ESCAPE_EXTRA_INFO ;
 int URL_ESCAPE_SPACES_ONLY ;
 int create_uri (int const*,int ,int **) ;
 int navigate_uri (int *,int *,int ,int *,int ) ;
 int translate_uri (int *,int *,int *,int **) ;

HRESULT navigate_url(HTMLOuterWindow *window, const WCHAR *new_url, IUri *base_uri, DWORD flags)
{
    IUri *uri, *nav_uri;
    BSTR display_uri;
    HRESULT hres;

    if(new_url && base_uri)
        hres = CoInternetCombineUrlEx(base_uri, new_url, URL_ESCAPE_SPACES_ONLY|URL_DONT_ESCAPE_EXTRA_INFO,
                &nav_uri, 0);
    else
        hres = create_uri(new_url, 0, &nav_uri);
    if(FAILED(hres))
        return hres;

    hres = translate_uri(window, nav_uri, &display_uri, &uri);
    IUri_Release(nav_uri);
    if(FAILED(hres))
        return hres;

    hres = navigate_uri(window, uri, display_uri, ((void*)0), flags);
    IUri_Release(uri);
    SysFreeString(display_uri);
    return hres;
}
