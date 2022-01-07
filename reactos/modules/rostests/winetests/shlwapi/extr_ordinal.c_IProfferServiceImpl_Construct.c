
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IProfferService_iface; } ;
typedef TYPE_1__ IProfferServiceImpl ;
typedef TYPE_2__ IProfferService ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IProfferServiceImpl_Vtbl ;

__attribute__((used)) static IProfferService* IProfferServiceImpl_Construct(void)
{
    IProfferServiceImpl *obj;

    obj = HeapAlloc(GetProcessHeap(), 0, sizeof(*obj));
    obj->IProfferService_iface.lpVtbl = &IProfferServiceImpl_Vtbl;
    obj->ref = 1;

    return &obj->IProfferService_iface;
}
