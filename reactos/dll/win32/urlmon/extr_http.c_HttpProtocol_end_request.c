
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int request; } ;
typedef TYPE_1__ Protocol ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ ERROR_IO_PENDING ;
 int E_FAIL ;
 int FIXME (char*,scalar_t__) ;
 scalar_t__ GetLastError () ;
 int HttpEndRequestW (int ,int *,int ,int ) ;
 int S_OK ;

__attribute__((used)) static HRESULT HttpProtocol_end_request(Protocol *protocol)
{
    BOOL res;

    res = HttpEndRequestW(protocol->request, ((void*)0), 0, 0);
    if(!res && GetLastError() != ERROR_IO_PENDING) {
        FIXME("HttpEndRequest failed: %u\n", GetLastError());
        return E_FAIL;
    }

    return S_OK;
}
