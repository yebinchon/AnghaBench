
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lock; } ;
typedef TYPE_1__ Protocol ;
typedef int HRESULT ;


 int GetLastError () ;
 int InternetUnlockRequestFile (scalar_t__) ;
 int S_OK ;
 int WARN (char*,int ) ;

HRESULT protocol_unlock_request(Protocol *protocol)
{
    if(!protocol->lock)
        return S_OK;

    if(!InternetUnlockRequestFile(protocol->lock))
        WARN("InternetUnlockRequest failed: %d\n", GetLastError());
    protocol->lock = 0;

    return S_OK;
}
