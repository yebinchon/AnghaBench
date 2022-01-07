
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int IInternetProtocolInfo ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ E_FAIL ;
 scalar_t__ E_POINTER ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IInternetProtocolInfo_ParseUrl (int *,int ,int ,int ,int ,int ,int *,int ) ;
 int IInternetProtocolInfo_Release (int *) ;
 int PARSE_DOMAIN ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ,int ,int ,int ,int *) ;
 int URL_PART_HOSTNAME ;
 scalar_t__ UrlGetPartW (int ,int ,int *,int ,int ) ;
 int debugstr_w (int ) ;
 int * get_protocol_info (int ) ;

__attribute__((used)) static HRESULT parse_domain(LPCWSTR url, DWORD flags, LPWSTR result,
        DWORD size, DWORD *rsize)
{
    IInternetProtocolInfo *protocol_info;
    HRESULT hres;

    TRACE("(%s %08x %p %d %p)\n", debugstr_w(url), flags, result, size, rsize);

    protocol_info = get_protocol_info(url);

    if(protocol_info) {
        hres = IInternetProtocolInfo_ParseUrl(protocol_info, url, PARSE_DOMAIN,
                flags, result, size, rsize, 0);
        IInternetProtocolInfo_Release(protocol_info);
        if(SUCCEEDED(hres))
            return hres;
    }

    hres = UrlGetPartW(url, result, &size, URL_PART_HOSTNAME, flags);
    if(rsize)
        *rsize = size;

    if(hres == E_POINTER)
        return S_FALSE;

    if(FAILED(hres))
        return E_FAIL;
    return S_OK;
}
