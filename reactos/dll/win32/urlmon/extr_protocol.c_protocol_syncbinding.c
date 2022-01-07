
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int content_length; int available_bytes; int protocol_sink; int query_available; int request; } ;
typedef TYPE_1__ Protocol ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int BSCF_DATAFULLYAVAILABLE ;
 int BSCF_LASTDATANOTIFICATION ;
 scalar_t__ FAILED (int ) ;
 int FLAG_FIRST_DATA_REPORTED ;
 int FLAG_LAST_DATA_REPORTED ;
 int FLAG_SYNC_READ ;
 int GetLastError () ;
 int IInternetProtocolSink_ReportData (int ,int,int ,int ) ;
 scalar_t__ InternetQueryDataAvailable (int ,int *,int ,int ) ;
 int S_OK ;
 int WARN (char*,int ) ;
 int start_downloading (TYPE_1__*) ;

HRESULT protocol_syncbinding(Protocol *protocol)
{
    BOOL res;
    HRESULT hres;

    protocol->flags |= FLAG_SYNC_READ;

    hres = start_downloading(protocol);
    if(FAILED(hres))
        return hres;

    res = InternetQueryDataAvailable(protocol->request, &protocol->query_available, 0, 0);
    if(res)
        protocol->available_bytes = protocol->query_available;
    else
        WARN("InternetQueryDataAvailable failed: %u\n", GetLastError());

    protocol->flags |= FLAG_FIRST_DATA_REPORTED|FLAG_LAST_DATA_REPORTED;
    IInternetProtocolSink_ReportData(protocol->protocol_sink, BSCF_LASTDATANOTIFICATION|BSCF_DATAFULLYAVAILABLE,
            protocol->available_bytes, protocol->content_length);
    return S_OK;
}
