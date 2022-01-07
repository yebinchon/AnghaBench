
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int IInternetProtocolInfo ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 int IInternetProtocolInfo_ParseUrl (int *,int ,int ,int ,int ,int ,int *,int ) ;
 int IInternetProtocolInfo_Release (int *) ;
 int PARSE_SECURITY_URL ;
 int TRACE (char*,int ,int ,int ,int ,int *) ;
 int debugstr_w (int ) ;
 int * get_protocol_info (int ) ;

__attribute__((used)) static HRESULT parse_security_url(LPCWSTR url, DWORD flags, LPWSTR result, DWORD size, DWORD *rsize)
{
    IInternetProtocolInfo *protocol_info;
    HRESULT hres;

    TRACE("(%s %08x %p %d %p)\n", debugstr_w(url), flags, result, size, rsize);

    protocol_info = get_protocol_info(url);

    if(protocol_info) {
        hres = IInternetProtocolInfo_ParseUrl(protocol_info, url, PARSE_SECURITY_URL,
                flags, result, size, rsize, 0);
        IInternetProtocolInfo_Release(protocol_info);
        return hres;
    }

    return E_FAIL;
}
