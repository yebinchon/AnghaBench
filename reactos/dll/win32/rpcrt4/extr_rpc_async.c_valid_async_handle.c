
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Signature; } ;
typedef TYPE_1__* PRPC_ASYNC_STATE ;
typedef int BOOL ;


 scalar_t__ RPC_ASYNC_SIGNATURE ;

__attribute__((used)) static inline BOOL valid_async_handle(PRPC_ASYNC_STATE pAsync)
{
    return pAsync->Signature == RPC_ASYNC_SIGNATURE;
}
