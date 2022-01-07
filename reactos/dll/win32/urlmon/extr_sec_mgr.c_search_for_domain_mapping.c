
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int E_OUTOFMEMORY ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ RegEnumKeyExW (int ,scalar_t__,int *,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *) ;
 int S_FALSE ;
 int S_OK ;
 int WARN (char*) ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;
 int search_domain_for_zone (int ,int *,scalar_t__,int ,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static HRESULT search_for_domain_mapping(HKEY domains, LPCWSTR schema, LPCWSTR host, DWORD host_len, DWORD *zone)
{
    WCHAR *domain;
    DWORD domain_count, domain_len, i;
    DWORD res;
    HRESULT hres = S_FALSE;

    res = RegQueryInfoKeyW(domains, ((void*)0), ((void*)0), ((void*)0), &domain_count, &domain_len,
                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if(res != ERROR_SUCCESS) {
        WARN("Failed to retrieve information about key\n");
        return E_UNEXPECTED;
    }

    if(!domain_count)
        return S_FALSE;

    domain = heap_alloc((domain_len+1)*sizeof(WCHAR));
    if(!domain)
        return E_OUTOFMEMORY;

    for(i = 0; i < domain_count; ++i) {
        DWORD len = domain_len+1;

        res = RegEnumKeyExW(domains, i, domain, &len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if(res != ERROR_SUCCESS) {
            heap_free(domain);
            return E_UNEXPECTED;
        }

        hres = search_domain_for_zone(domains, domain, len, schema, host, host_len, zone);
        if(FAILED(hres) || hres == S_OK)
            break;
    }

    heap_free(domain);
    return hres;
}
