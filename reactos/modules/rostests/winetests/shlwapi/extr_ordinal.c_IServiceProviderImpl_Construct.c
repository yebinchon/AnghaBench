
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IServiceProvider_iface; } ;
typedef TYPE_1__ IServiceProviderImpl ;
typedef TYPE_2__ IServiceProvider ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IServiceProviderImpl_Vtbl ;

__attribute__((used)) static IServiceProvider* IServiceProviderImpl_Construct(void)
{
    IServiceProviderImpl *obj;

    obj = HeapAlloc(GetProcessHeap(), 0, sizeof(*obj));
    obj->IServiceProvider_iface.lpVtbl = &IServiceProviderImpl_Vtbl;
    obj->ref = 1;

    return &obj->IServiceProvider_iface;
}
