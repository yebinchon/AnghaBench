
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_11__ {scalar_t__ pstm; int hGlobal; } ;
struct TYPE_12__ {int tymed; TYPE_1__ u; } ;
struct TYPE_13__ {scalar_t__ dwBindVerb; TYPE_2__ stgmedData; int cbstgmedData; } ;
struct TYPE_14__ {int request; scalar_t__ post_stream; TYPE_3__ bind_info; } ;
struct TYPE_17__ {TYPE_4__ base; int full_header; } ;
struct TYPE_16__ {int member_0; int dwBufferLength; int lpvBuffer; int dwHeadersLength; int lpcszHeader; int dwBufferTotal; int dwHeadersTotal; } ;
struct TYPE_15__ {int QuadPart; } ;
typedef TYPE_5__ LARGE_INTEGER ;
typedef TYPE_6__ INTERNET_BUFFERSW ;
typedef TYPE_7__ HttpProtocol ;
typedef scalar_t__ BOOL ;


 scalar_t__ BINDVERB_GET ;
 int FIXME (char*,int) ;
 int GetLastError () ;
 scalar_t__ HttpSendRequestExW (int ,TYPE_6__*,int *,int ,int ) ;
 scalar_t__ HttpSendRequestW (int ,int ,int ,int ,int ) ;
 int IStream_AddRef (scalar_t__) ;
 int IStream_Seek (scalar_t__,TYPE_5__,int ,int *) ;
 int STREAM_SEEK_SET ;


 int strlenW (int ) ;

__attribute__((used)) static ULONG send_http_request(HttpProtocol *This)
{
    INTERNET_BUFFERSW send_buffer = {sizeof(INTERNET_BUFFERSW)};
    BOOL res;

    send_buffer.lpcszHeader = This->full_header;
    send_buffer.dwHeadersLength = send_buffer.dwHeadersTotal = strlenW(This->full_header);

    if(This->base.bind_info.dwBindVerb != BINDVERB_GET) {
        switch(This->base.bind_info.stgmedData.tymed) {
        case 129:

            send_buffer.lpvBuffer = This->base.bind_info.stgmedData.u.hGlobal;
            send_buffer.dwBufferLength = send_buffer.dwBufferTotal = This->base.bind_info.cbstgmedData;
            break;
        case 128: {
            LARGE_INTEGER offset;

            send_buffer.dwBufferTotal = This->base.bind_info.cbstgmedData;
            if(!This->base.post_stream) {
                This->base.post_stream = This->base.bind_info.stgmedData.u.pstm;
                IStream_AddRef(This->base.post_stream);
            }

            offset.QuadPart = 0;
            IStream_Seek(This->base.post_stream, offset, STREAM_SEEK_SET, ((void*)0));
            break;
        }
        default:
            FIXME("Unsupported This->base.bind_info.stgmedData.tymed %d\n", This->base.bind_info.stgmedData.tymed);
        }
    }

    if(This->base.post_stream)
        res = HttpSendRequestExW(This->base.request, &send_buffer, ((void*)0), 0, 0);
    else
        res = HttpSendRequestW(This->base.request, send_buffer.lpcszHeader, send_buffer.dwHeadersLength,
                send_buffer.lpvBuffer, send_buffer.dwBufferLength);

    return res ? 0 : GetLastError();
}
