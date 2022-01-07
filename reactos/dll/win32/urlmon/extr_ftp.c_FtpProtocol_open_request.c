
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int request; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int Protocol ;
typedef int IUri ;
typedef int IInternetBindInfo ;
typedef int HRESULT ;
typedef int HINTERNET ;
typedef TYPE_2__ FtpProtocol ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BSTR ;


 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GetLastError () ;
 int INET_E_RESOURCE_NOT_FOUND ;
 int INTERNET_FLAG_EXISTING_CONNECT ;
 int INTERNET_FLAG_PASSIVE ;
 int IUri_GetAbsoluteUri (int *,int *) ;
 int InternetOpenUrlW (int ,int ,int *,int ,int,int ) ;
 int S_OK ;
 int SysFreeString (int ) ;
 int WARN (char*,scalar_t__) ;
 TYPE_2__* impl_from_Protocol (int *) ;

__attribute__((used)) static HRESULT FtpProtocol_open_request(Protocol *prot, IUri *uri, DWORD request_flags,
        HINTERNET internet_session, IInternetBindInfo *bind_info)
{
    FtpProtocol *This = impl_from_Protocol(prot);
    BSTR url;
    HRESULT hres;

    hres = IUri_GetAbsoluteUri(uri, &url);
    if(FAILED(hres))
        return hres;

    This->base.request = InternetOpenUrlW(internet_session, url, ((void*)0), 0,
            request_flags|INTERNET_FLAG_EXISTING_CONNECT|INTERNET_FLAG_PASSIVE,
            (DWORD_PTR)&This->base);
    SysFreeString(url);
    if (!This->base.request && GetLastError() != ERROR_IO_PENDING) {
        WARN("InternetOpenUrl failed: %d\n", GetLastError());
        return INET_E_RESOURCE_NOT_FOUND;
    }

    return S_OK;
}
