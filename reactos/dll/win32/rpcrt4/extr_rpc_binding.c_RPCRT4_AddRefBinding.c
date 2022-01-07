
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ RpcBinding ;


 int InterlockedIncrement (int *) ;

void RPCRT4_AddRefBinding(RpcBinding* Binding)
{
  InterlockedIncrement(&Binding->refs);
}
