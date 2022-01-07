
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;


 int CoInternetGetSecurityUrlEx (int *,int **,int ,int ) ;
 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int PSU_SECURITY_URL_ONLY ;
 int map_security_uri_to_zone (int *,int *) ;

__attribute__((used)) static HRESULT map_uri_to_zone(IUri *uri, DWORD *zone, IUri **ret_uri)
{
    HRESULT hres;
    IUri *secur_uri;

    hres = CoInternetGetSecurityUrlEx(uri, &secur_uri, PSU_SECURITY_URL_ONLY, 0);
    if(FAILED(hres))
        return hres;

    hres = map_security_uri_to_zone(secur_uri, zone);
    if(FAILED(hres) || !ret_uri)
        IUri_Release(secur_uri);
    else
        *ret_uri = secur_uri;

    return hres;
}
