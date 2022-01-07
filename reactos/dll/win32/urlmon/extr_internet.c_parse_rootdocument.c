
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int url_info ;
typedef int WCHAR ;
struct TYPE_3__ {int cbSize; int nScheme; int cchSuffix; char* pszSuffix; scalar_t__ cchProtocol; } ;
typedef TYPE_1__ PARSEDURLW ;
typedef scalar_t__ LPWSTR ;
typedef int LPCWSTR ;
typedef int IInternetProtocolInfo ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int E_FAIL ;
 int E_POINTER ;
 scalar_t__ FAILED (int ) ;
 int IInternetProtocolInfo_ParseUrl (int *,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int ) ;
 int IInternetProtocolInfo_Release (int *) ;
 int PARSE_ROOTDOCUMENT ;
 int ParseURLW (int ,TYPE_1__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_FALSE ;
 int TRACE (char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 int URL_PART_HOSTNAME ;



 int UrlGetPartW (int ,scalar_t__,scalar_t__*,int ,scalar_t__) ;
 int debugstr_w (int ) ;
 int * get_protocol_info (int ) ;
 int memcpy (scalar_t__,int ,int) ;

__attribute__((used)) static HRESULT parse_rootdocument(LPCWSTR url, DWORD flags, LPWSTR result,
        DWORD size, DWORD *rsize)
{
    IInternetProtocolInfo *protocol_info;
    PARSEDURLW url_info;
    HRESULT hres;

    TRACE("(%s %08x %p %d %p)\n", debugstr_w(url), flags, result, size, rsize);

    protocol_info = get_protocol_info(url);

    if(protocol_info) {
        hres = IInternetProtocolInfo_ParseUrl(protocol_info, url, PARSE_ROOTDOCUMENT,
                flags, result, size, rsize, 0);
        IInternetProtocolInfo_Release(protocol_info);
        if(SUCCEEDED(hres))
            return hres;
    }

    url_info.cbSize = sizeof(url_info);
    if(FAILED(ParseURLW(url, &url_info)))
        return E_FAIL;

    switch(url_info.nScheme) {
        case 130:
        case 129:
        case 128:
            if(url_info.cchSuffix<3 || *(url_info.pszSuffix)!='/'
                    || *(url_info.pszSuffix+1)!='/')
                return E_FAIL;

            if(size < url_info.cchProtocol+3) {
                size = 0;
                hres = UrlGetPartW(url, result, &size, URL_PART_HOSTNAME, flags);

                if(rsize)
                    *rsize = size+url_info.cchProtocol+3;

                if(hres == E_POINTER)
                    return S_FALSE;

                return hres;
            }

            size -= url_info.cchProtocol+3;
            hres = UrlGetPartW(url, result+url_info.cchProtocol+3,
                    &size, URL_PART_HOSTNAME, flags);

            if(hres == E_POINTER)
                return S_FALSE;

            if(FAILED(hres))
                return E_FAIL;

            if(rsize)
                *rsize = size+url_info.cchProtocol+3;

            memcpy(result, url, (url_info.cchProtocol+3)*sizeof(WCHAR));
            return hres;
        default:
            return E_FAIL;
    }
}
