
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_header_t ;
struct TYPE_4__ {int dwContext; } ;
struct TYPE_3__ {TYPE_2__ hdr; int bytesWritten; int netconn; } ;
typedef TYPE_1__ http_request_t ;
typedef int LPINT ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int INTERNET_STATUS_REQUEST_SENT ;
 int INTERNET_STATUS_SENDING_REQUEST ;
 int INTERNET_SendCallback (TYPE_2__*,int ,int ,scalar_t__*,int) ;
 scalar_t__ NETCON_send (int ,void const*,scalar_t__,int ,int ) ;

__attribute__((used)) static DWORD HTTPREQ_WriteFile(object_header_t *hdr, const void *buffer, DWORD size, DWORD *written)
{
    DWORD res;
    http_request_t *request = (http_request_t*)hdr;

    INTERNET_SendCallback(&request->hdr, request->hdr.dwContext, INTERNET_STATUS_SENDING_REQUEST, ((void*)0), 0);

    *written = 0;
    res = NETCON_send(request->netconn, buffer, size, 0, (LPINT)written);
    if (res == ERROR_SUCCESS)
        request->bytesWritten += *written;

    INTERNET_SendCallback(&request->hdr, request->hdr.dwContext, INTERNET_STATUS_REQUEST_SENT, written, sizeof(DWORD));
    return res;
}
