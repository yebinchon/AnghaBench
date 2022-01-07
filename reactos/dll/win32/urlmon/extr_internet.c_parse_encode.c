
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int IInternetProtocolInfo ;
typedef int HRESULT ;
typedef int DWORD ;


 int IInternetProtocolInfo_ParseUrl (int *,scalar_t__,int ,int ,int ,int ,int *,int ) ;
 int IInternetProtocolInfo_Release (int *) ;
 int PARSE_ENCODE ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ,int ,int ,int ,int *) ;
 int UrlUnescapeW (int ,int ,int *,int ) ;
 int debugstr_w (scalar_t__) ;
 int * get_protocol_info (scalar_t__) ;

__attribute__((used)) static HRESULT parse_encode(LPCWSTR url, DWORD flags, LPWSTR result, DWORD size, DWORD *rsize)
{
    IInternetProtocolInfo *protocol_info;
    DWORD prsize;
    HRESULT hres;

    TRACE("(%s %08x %p %d %p)\n", debugstr_w(url), flags, result, size, rsize);

    protocol_info = get_protocol_info(url);

    if(protocol_info) {
        hres = IInternetProtocolInfo_ParseUrl(protocol_info, url, PARSE_ENCODE,
                flags, result, size, rsize, 0);
        IInternetProtocolInfo_Release(protocol_info);
        if(SUCCEEDED(hres))
            return hres;
    }

    prsize = size;
    hres = UrlUnescapeW((LPWSTR)url, result, &prsize, flags);

    if(rsize)
        *rsize = prsize;

    return hres;
}
