
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPCWSTR ;
typedef int INT ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ERR (char*,int ,scalar_t__,...) ;
 scalar_t__ ERROR_SUCCESS ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 scalar_t__ FALSE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyW (int ,scalar_t__,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ TRUE ;
 int debugstr_w (scalar_t__) ;
 int find_domain_name (scalar_t__,scalar_t__,int *) ;
 scalar_t__ get_zone_for_scheme (int ,scalar_t__,scalar_t__*) ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;
 int * heap_strndupW (scalar_t__,scalar_t__) ;
 scalar_t__ matches_domain_pattern (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 int strchrW (scalar_t__,scalar_t__) ;

__attribute__((used)) static HRESULT search_domain_for_zone(HKEY domains, LPCWSTR domain, DWORD domain_len, LPCWSTR schema,
                                      LPCWSTR host, DWORD host_len, DWORD *zone)
{
    BOOL found = FALSE;
    HKEY domain_key;
    DWORD res;
    LPCWSTR matched;

    if(host_len >= domain_len && matches_domain_pattern(domain, host, TRUE, &matched)) {
        res = RegOpenKeyW(domains, domain, &domain_key);
        if(res != ERROR_SUCCESS) {
            ERR("Failed to open domain key %s: %d\n", debugstr_w(domain), res);
            return E_UNEXPECTED;
        }

        if(matched == host)
            found = get_zone_for_scheme(domain_key, schema, zone);
        else {
            INT domain_offset;
            DWORD subdomain_count, subdomain_len;
            BOOL check_domain = TRUE;

            find_domain_name(domain, domain_len, &domain_offset);

            res = RegQueryInfoKeyW(domain_key, ((void*)0), ((void*)0), ((void*)0), &subdomain_count, &subdomain_len,
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
            if(res != ERROR_SUCCESS) {
                ERR("Unable to query info for key %s: %d\n", debugstr_w(domain), res);
                RegCloseKey(domain_key);
                return E_UNEXPECTED;
            }

            if(subdomain_count) {
                WCHAR *subdomain;
                WCHAR *component;
                DWORD i;

                subdomain = heap_alloc((subdomain_len+1)*sizeof(WCHAR));
                if(!subdomain) {
                    RegCloseKey(domain_key);
                    return E_OUTOFMEMORY;
                }

                component = heap_strndupW(host, matched-host-1);
                if(!component) {
                    heap_free(subdomain);
                    RegCloseKey(domain_key);
                    return E_OUTOFMEMORY;
                }

                for(i = 0; i < subdomain_count; ++i) {
                    DWORD len = subdomain_len+1;
                    const WCHAR *sub_matched;

                    res = RegEnumKeyExW(domain_key, i, subdomain, &len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
                    if(res != ERROR_SUCCESS) {
                        heap_free(component);
                        heap_free(subdomain);
                        RegCloseKey(domain_key);
                        return E_UNEXPECTED;
                    }

                    if(matches_domain_pattern(subdomain, component, FALSE, &sub_matched)) {
                        HKEY subdomain_key;

                        res = RegOpenKeyW(domain_key, subdomain, &subdomain_key);
                        if(res != ERROR_SUCCESS) {
                            ERR("Unable to open subdomain key %s of %s: %d\n", debugstr_w(subdomain),
                                debugstr_w(domain), res);
                            heap_free(component);
                            heap_free(subdomain);
                            RegCloseKey(domain_key);
                            return E_UNEXPECTED;
                        }

                        found = get_zone_for_scheme(subdomain_key, schema, zone);
                        check_domain = FALSE;
                        RegCloseKey(subdomain_key);
                        break;
                    }
                }
                heap_free(subdomain);
                heap_free(component);
            }
            if(check_domain && !domain_offset && !strchrW(host, matched-host-1))
                found = get_zone_for_scheme(domain_key, schema, zone);
        }
        RegCloseKey(domain_key);
    }

    return found ? S_OK : S_FALSE;
}
