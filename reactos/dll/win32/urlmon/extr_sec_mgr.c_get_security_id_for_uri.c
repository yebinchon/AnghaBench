
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int URLZONE_INVALID ;
 int generate_security_id (int *,int *,int *,int ) ;
 int map_uri_to_zone (int *,int *,int **) ;

__attribute__((used)) static HRESULT get_security_id_for_uri(IUri *uri, BYTE *secid, DWORD *secid_len)
{
    HRESULT hres;
    IUri *secur_uri;
    DWORD zone = URLZONE_INVALID;

    hres = map_uri_to_zone(uri, &zone, &secur_uri);
    if(FAILED(hres))
        return hres;

    hres = generate_security_id(secur_uri, secid, secid_len, zone);
    IUri_Release(secur_uri);

    return hres;
}
