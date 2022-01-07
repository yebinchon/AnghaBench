
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef int LPCWSTR ;
typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int CoTaskMemFree (int *) ;
 int CreateUri (int *,int ,int ,int **) ;
 int E_INVALIDARG ;
 scalar_t__ FAILED (int) ;
 int IUri_Release (int *) ;
 int URLZONE_INVALID ;
 int Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ;
 int generate_security_id (int *,int *,int *,int ) ;
 int map_url_to_zone (int ,int *,int **) ;

__attribute__((used)) static HRESULT get_security_id_for_url(LPCWSTR url, BYTE *secid, DWORD *secid_len)
{
    HRESULT hres;
    DWORD zone = URLZONE_INVALID;
    LPWSTR secur_url = ((void*)0);
    IUri *uri;

    hres = map_url_to_zone(url, &zone, &secur_url);
    if(FAILED(hres))
        return hres == 0x80041001 ? E_INVALIDARG : hres;

    hres = CreateUri(secur_url, Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, &uri);
    CoTaskMemFree(secur_url);
    if(FAILED(hres))
        return hres;

    hres = generate_security_id(uri, secid, secid_len, zone);
    IUri_Release(uri);

    return hres;
}
