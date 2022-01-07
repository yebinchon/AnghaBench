
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int request; } ;
typedef TYPE_1__ Protocol ;
typedef int HRESULT ;


 int GetLastError () ;
 int InternetLockRequestFile (int ,int *) ;
 int S_OK ;
 int WARN (char*,int ) ;

HRESULT protocol_lock_request(Protocol *protocol)
{
    if (!InternetLockRequestFile(protocol->request, &protocol->lock))
        WARN("InternetLockRequest failed: %d\n", GetLastError());

    return S_OK;
}
