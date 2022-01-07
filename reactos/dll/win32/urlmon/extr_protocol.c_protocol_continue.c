
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ pData; } ;
struct TYPE_13__ {int flags; scalar_t__ query_available; scalar_t__ available_bytes; int request; scalar_t__ post_stream; TYPE_1__* vtbl; int protocol_sink; } ;
struct TYPE_12__ {int (* on_error ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ Protocol ;
typedef TYPE_3__ PROTOCOLDATA ;
typedef int HRESULT ;
typedef int BOOL ;


 int BINDSTATUS_DOWNLOADINGDATA ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ FAILED (int ) ;
 int FLAG_ERROR ;
 int FLAG_REQUEST_COMPLETE ;
 scalar_t__ GetLastError () ;
 int INET_E_DATA_NOT_AVAILABLE ;
 int InternetQueryDataAvailable (int ,scalar_t__*,int ,int ) ;
 int PtrToUlong (scalar_t__) ;
 int S_OK ;
 int TRACE (char*,scalar_t__) ;
 scalar_t__ UlongToPtr (int ) ;
 int WARN (char*,...) ;
 int all_data_read (TYPE_2__*) ;
 int report_data (TYPE_2__*) ;
 int report_result (TYPE_2__*,int ) ;
 int start_downloading (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ) ;
 int write_post_stream (TYPE_2__*) ;

HRESULT protocol_continue(Protocol *protocol, PROTOCOLDATA *data)
{
    BOOL is_start;
    HRESULT hres;

    is_start = !data || data->pData == UlongToPtr(BINDSTATUS_DOWNLOADINGDATA);

    if(!protocol->request) {
        WARN("Expected request to be non-NULL\n");
        return S_OK;
    }

    if(!protocol->protocol_sink) {
        WARN("Expected IInternetProtocolSink pointer to be non-NULL\n");
        return S_OK;
    }

    if(protocol->flags & FLAG_ERROR) {
        protocol->flags &= ~FLAG_ERROR;
        protocol->vtbl->on_error(protocol, PtrToUlong(data->pData));
        return S_OK;
    }

    if(protocol->post_stream)
        return write_post_stream(protocol);

    if(is_start) {
        hres = start_downloading(protocol);
        if(FAILED(hres))
            return S_OK;
    }

    if(!data || data->pData >= UlongToPtr(BINDSTATUS_DOWNLOADINGDATA)) {
        if(!protocol->available_bytes) {
            if(protocol->query_available) {
                protocol->available_bytes = protocol->query_available;
            }else {
                BOOL res;




                protocol->flags &= ~FLAG_REQUEST_COMPLETE;
                res = InternetQueryDataAvailable(protocol->request, &protocol->query_available, 0, 0);
                if(res) {
                    TRACE("available %u bytes\n", protocol->query_available);
                    if(!protocol->query_available) {
                        all_data_read(protocol);
                        return S_OK;
                    }
                    protocol->available_bytes = protocol->query_available;
                }else if(GetLastError() != ERROR_IO_PENDING) {
                    protocol->flags |= FLAG_REQUEST_COMPLETE;
                    WARN("InternetQueryDataAvailable failed: %d\n", GetLastError());
                    report_result(protocol, INET_E_DATA_NOT_AVAILABLE);
                    return S_OK;
                }
            }

            protocol->flags |= FLAG_REQUEST_COMPLETE;
        }

        report_data(protocol);
    }

    return S_OK;
}
