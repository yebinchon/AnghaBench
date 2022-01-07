
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UUID ;
struct TYPE_2__ {int uuid; } ;
typedef TYPE_1__ RpcContextHandle ;
typedef scalar_t__ NDR_SCONTEXT ;



void RpcContextHandle_GetUuid(NDR_SCONTEXT SContext, UUID *uuid)
{
    RpcContextHandle *context_handle = (RpcContextHandle *)SContext;
    *uuid = context_handle->uuid;
}
