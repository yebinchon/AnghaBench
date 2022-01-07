
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IServiceProvider_iface; } ;
typedef TYPE_2__ IServiceProviderImpl ;


 TYPE_2__* heap_alloc (int) ;
 int spvtbl ;

__attribute__((used)) static IServiceProviderImpl *create_serviceprovider(void)
{
    IServiceProviderImpl *sp = heap_alloc(sizeof(*sp));
    sp->IServiceProvider_iface.lpVtbl = &spvtbl;
    sp->ref = 1;
    return sp;
}
