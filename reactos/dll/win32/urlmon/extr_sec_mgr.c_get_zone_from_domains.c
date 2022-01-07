
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUri ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int * BSTR ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (scalar_t__) ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ IUri_GetHost (int *,int **) ;
 scalar_t__ IUri_GetScheme (int *,scalar_t__*) ;
 scalar_t__ IUri_GetSchemeName (int *,int **) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,int ,int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int SysStringLen (int *) ;
 scalar_t__ URLZONE_INVALID ;
 scalar_t__ URL_SCHEME_FILE ;
 scalar_t__ URL_SCHEME_UNKNOWN ;
 int WARN (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ is_hierarchical_scheme (scalar_t__) ;
 scalar_t__ search_for_domain_mapping (int ,int *,int *,int ,scalar_t__*) ;
 int wszZoneMapDomainsKey ;

__attribute__((used)) static HRESULT get_zone_from_domains(IUri *uri, DWORD *zone)
{
    HRESULT hres;
    BSTR host, scheme;
    DWORD res;
    HKEY domains;
    DWORD scheme_type;

    hres = IUri_GetScheme(uri, &scheme_type);
    if(FAILED(hres))
        return hres;




    if(scheme_type == URL_SCHEME_UNKNOWN)
        return S_FALSE;

    hres = IUri_GetHost(uri, &host);
    if(FAILED(hres))
        return hres;




    if((scheme_type != URL_SCHEME_UNKNOWN && scheme_type != URL_SCHEME_FILE)
        && is_hierarchical_scheme(scheme_type) && !*host) {
        *zone = URLZONE_INVALID;

        SysFreeString(host);


        return S_OK;
    }

    hres = IUri_GetSchemeName(uri, &scheme);
    if(FAILED(hres)) {
        SysFreeString(host);
        return hres;
    }


    res = RegOpenKeyW(HKEY_CURRENT_USER, wszZoneMapDomainsKey, &domains);
    if(res == ERROR_SUCCESS) {
        hres = search_for_domain_mapping(domains, scheme, host, SysStringLen(host), zone);
        RegCloseKey(domains);
    } else
        WARN("Failed to open HKCU's %s key\n", debugstr_w(wszZoneMapDomainsKey));


    if(hres == S_FALSE) {
        res = RegOpenKeyW(HKEY_LOCAL_MACHINE, wszZoneMapDomainsKey, &domains);
        if(res == ERROR_SUCCESS) {
            hres = search_for_domain_mapping(domains, scheme, host, SysStringLen(host), zone);
            RegCloseKey(domains);
        } else
            WARN("Failed to open HKLM's %s key\n", debugstr_w(wszZoneMapDomainsKey));
    }

    SysFreeString(host);
    SysFreeString(scheme);
    return hres;
}
