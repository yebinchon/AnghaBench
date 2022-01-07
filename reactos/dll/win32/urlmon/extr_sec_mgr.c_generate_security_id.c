
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int IUri ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int * BSTR ;


 int CP_ACP ;
 int E_INVALIDARG ;
 int E_NOT_SUFFICIENT_BUFFER ;
 scalar_t__ FAILED (int ) ;
 int IUri_GetDisplayUri (int *,int **) ;
 int IUri_GetHost (int *,int **) ;
 int IUri_GetScheme (int *,scalar_t__*) ;
 int IUri_GetSchemeName (int *,int **) ;
 int S_OK ;
 int SysFreeString (int *) ;
 scalar_t__ URLZONE_INVALID ;
 scalar_t__ URL_SCHEME_WILDCARD ;
 scalar_t__ WideCharToMultiByte (int ,int ,int *,int,int *,scalar_t__,int *,int *) ;
 int is_hierarchical_scheme (scalar_t__) ;

__attribute__((used)) static HRESULT generate_security_id(IUri *uri, BYTE *secid, DWORD *secid_len, DWORD zone)
{
    DWORD len;
    HRESULT hres;
    DWORD scheme_type;

    if(zone == URLZONE_INVALID)
        return E_INVALIDARG;

    hres = IUri_GetScheme(uri, &scheme_type);
    if(FAILED(hres))
        return hres;


    if(!is_hierarchical_scheme(scheme_type) && scheme_type != URL_SCHEME_WILDCARD) {
        BSTR display_uri;

        hres = IUri_GetDisplayUri(uri, &display_uri);
        if(FAILED(hres))
            return hres;

        len = WideCharToMultiByte(CP_ACP, 0, display_uri, -1, ((void*)0), 0, ((void*)0), ((void*)0))-1;

        if(len+sizeof(DWORD) > *secid_len) {
            SysFreeString(display_uri);
            return E_NOT_SUFFICIENT_BUFFER;
        }

        WideCharToMultiByte(CP_ACP, 0, display_uri, -1, (LPSTR)secid, len, ((void*)0), ((void*)0));
        SysFreeString(display_uri);

        *(DWORD*)(secid+len) = zone;
    } else {
        BSTR host, scheme;
        DWORD host_len, scheme_len;
        BYTE *ptr;

        hres = IUri_GetHost(uri, &host);
        if(FAILED(hres))
            return hres;


        if(scheme_type == URL_SCHEME_WILDCARD && !*host) {
            SysFreeString(host);
            return E_INVALIDARG;
        }

        hres = IUri_GetSchemeName(uri, &scheme);
        if(FAILED(hres)) {
            SysFreeString(host);
            return hres;
        }

        host_len = WideCharToMultiByte(CP_ACP, 0, host, -1, ((void*)0), 0, ((void*)0), ((void*)0))-1;
        scheme_len = WideCharToMultiByte(CP_ACP, 0, scheme, -1, ((void*)0), 0, ((void*)0), ((void*)0))-1;

        len = host_len+scheme_len+sizeof(BYTE);

        if(len+sizeof(DWORD) > *secid_len) {
            SysFreeString(host);
            SysFreeString(scheme);
            return E_NOT_SUFFICIENT_BUFFER;
        }

        WideCharToMultiByte(CP_ACP, 0, scheme, -1, (LPSTR)secid, len, ((void*)0), ((void*)0));
        SysFreeString(scheme);

        ptr = secid+scheme_len;
        *ptr++ = ':';

        WideCharToMultiByte(CP_ACP, 0, host, -1, (LPSTR)ptr, host_len, ((void*)0), ((void*)0));
        SysFreeString(host);

        ptr += host_len;

        *(DWORD*)ptr = zone;
    }

    *secid_len = len+sizeof(DWORD);

    return S_OK;
}
