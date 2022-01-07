
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int OpenCount; } ;
typedef TYPE_1__* PNDISUIO_ADAPTER_CONTEXT ;



VOID
ReferenceAdapterContext(PNDISUIO_ADAPTER_CONTEXT AdapterContext)
{

    AdapterContext->OpenCount++;
}
