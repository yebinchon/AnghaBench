
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int cbSize; int dwOptions; } ;
struct TYPE_11__ {int bindf; TYPE_1__* vtbl; TYPE_8__ bind_info; int * protocol_sink; int * protocol; } ;
struct TYPE_10__ {scalar_t__ (* open_request ) (TYPE_2__*,int *,int ,int ,int *) ;} ;
typedef TYPE_2__ Protocol ;
typedef int IUri ;
typedef int IInternetProtocolSink ;
typedef int IInternetProtocol ;
typedef int IInternetBindInfo ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BINDINFO ;


 int BINDF_FROMURLMON ;
 int BINDF_NEEDFILE ;
 int BINDF_NOWRITECACHE ;
 int BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS ;
 int BINDSTATUS_DIRECTBIND ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IInternetBindInfo_GetBindInfo (int *,int*,TYPE_8__*) ;
 int IInternetProtocolSink_AddRef (int *) ;
 scalar_t__ INET_E_NO_SESSION ;
 int INTERNET_FLAG_KEEP_CONNECTION ;
 int INTERNET_FLAG_NEED_FILE ;
 int INTERNET_FLAG_NO_AUTO_REDIRECT ;
 int INTERNET_FLAG_NO_CACHE_WRITE ;
 scalar_t__ S_OK ;
 int WARN (char*,scalar_t__) ;
 int get_internet_session (int *) ;
 int internet_session ;
 int memset (TYPE_8__*,int ,int) ;
 int protocol_close_connection (TYPE_2__*) ;
 int report_progress (TYPE_2__*,int ,int *) ;
 scalar_t__ report_result (TYPE_2__*,scalar_t__) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int ,int ,int *) ;

HRESULT protocol_start(Protocol *protocol, IInternetProtocol *prot, IUri *uri,
        IInternetProtocolSink *protocol_sink, IInternetBindInfo *bind_info)
{
    DWORD request_flags;
    HRESULT hres;

    protocol->protocol = prot;

    IInternetProtocolSink_AddRef(protocol_sink);
    protocol->protocol_sink = protocol_sink;

    memset(&protocol->bind_info, 0, sizeof(protocol->bind_info));
    protocol->bind_info.cbSize = sizeof(BINDINFO);
    hres = IInternetBindInfo_GetBindInfo(bind_info, &protocol->bindf, &protocol->bind_info);
    if(hres != S_OK) {
        WARN("GetBindInfo failed: %08x\n", hres);
        return report_result(protocol, hres);
    }

    if(!(protocol->bindf & BINDF_FROMURLMON))
        report_progress(protocol, BINDSTATUS_DIRECTBIND, ((void*)0));

    if(!get_internet_session(bind_info))
        return report_result(protocol, INET_E_NO_SESSION);

    request_flags = INTERNET_FLAG_KEEP_CONNECTION;
    if(protocol->bindf & BINDF_NOWRITECACHE)
        request_flags |= INTERNET_FLAG_NO_CACHE_WRITE;
    if(protocol->bindf & BINDF_NEEDFILE)
        request_flags |= INTERNET_FLAG_NEED_FILE;
    if(protocol->bind_info.dwOptions & BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS)
        request_flags |= INTERNET_FLAG_NO_AUTO_REDIRECT;

    hres = protocol->vtbl->open_request(protocol, uri, request_flags, internet_session, bind_info);
    if(FAILED(hres)) {
        protocol_close_connection(protocol);
        return report_result(protocol, hres);
    }

    return S_OK;
}
