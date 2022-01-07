
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int IUri ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ CoInternetGetSecurityUrl (int ,int *,int ,int ) ;
 int CoTaskMemAlloc (int) ;
 int CoTaskMemFree (int ) ;
 scalar_t__ CreateUri (int ,int ,int ,int **) ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int IUri_Release (int *) ;
 int PSU_SECURITY_URL_ONLY ;
 scalar_t__ S_OK ;
 int URLZONE_INVALID ;
 int Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ;
 scalar_t__ map_security_uri_to_zone (int *,int*) ;
 int memcpy (int ,int ,int) ;
 int strlenW (int ) ;

__attribute__((used)) static HRESULT map_url_to_zone(LPCWSTR url, DWORD *zone, LPWSTR *ret_url)
{
    IUri *secur_uri;
    LPWSTR secur_url;
    HRESULT hres;

    *zone = URLZONE_INVALID;

    hres = CoInternetGetSecurityUrl(url, &secur_url, PSU_SECURITY_URL_ONLY, 0);
    if(hres != S_OK) {
        DWORD size = strlenW(url)*sizeof(WCHAR);

        secur_url = CoTaskMemAlloc(size);
        if(!secur_url)
            return E_OUTOFMEMORY;

        memcpy(secur_url, url, size);
    }

    hres = CreateUri(secur_url, Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, &secur_uri);
    if(FAILED(hres)) {
        CoTaskMemFree(secur_url);
        return hres;
    }

    hres = map_security_uri_to_zone(secur_uri, zone);
    IUri_Release(secur_uri);

    if(FAILED(hres) || !ret_url)
        CoTaskMemFree(secur_url);
    else
        *ret_url = secur_url;

    return hres;
}
