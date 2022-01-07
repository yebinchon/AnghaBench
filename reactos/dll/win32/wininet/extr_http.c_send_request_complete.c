
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dwContext; } ;
struct TYPE_6__ {TYPE_4__ hdr; } ;
typedef TYPE_1__ http_request_t ;
struct TYPE_7__ {int dwError; int dwResult; } ;
typedef TYPE_2__ INTERNET_ASYNC_RESULT ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int INTERNET_STATUS_REQUEST_COMPLETE ;
 int INTERNET_SendCallback (TYPE_4__*,int ,int ,TYPE_2__*,int) ;

__attribute__((used)) static void send_request_complete(http_request_t *req, DWORD_PTR result, DWORD error)
{
    INTERNET_ASYNC_RESULT iar;

    iar.dwResult = result;
    iar.dwError = error;

    INTERNET_SendCallback(&req->hdr, req->hdr.dwContext, INTERNET_STATUS_REQUEST_COMPLETE, &iar,
            sizeof(INTERNET_ASYNC_RESULT));
}
