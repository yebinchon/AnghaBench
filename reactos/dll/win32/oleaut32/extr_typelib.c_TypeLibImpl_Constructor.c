
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; int dispatch_href; int ref_list; int guid_list; int string_list; int name_list; int custdata_list; int implib_list; TYPE_3__ ICreateTypeLib2_iface; TYPE_2__ ITypeComp_iface; TYPE_1__ ITypeLib2_iface; } ;
typedef TYPE_4__ ITypeLibImpl ;


 int CreateTypeLib2Vtbl ;
 TYPE_4__* heap_alloc_zero (int) ;
 int list_init (int *) ;
 int tlbtcvt ;
 int tlbvt ;

__attribute__((used)) static ITypeLibImpl* TypeLibImpl_Constructor(void)
{
    ITypeLibImpl* pTypeLibImpl;

    pTypeLibImpl = heap_alloc_zero(sizeof(ITypeLibImpl));
    if (!pTypeLibImpl) return ((void*)0);

    pTypeLibImpl->ITypeLib2_iface.lpVtbl = &tlbvt;
    pTypeLibImpl->ITypeComp_iface.lpVtbl = &tlbtcvt;
    pTypeLibImpl->ICreateTypeLib2_iface.lpVtbl = &CreateTypeLib2Vtbl;
    pTypeLibImpl->ref = 1;

    list_init(&pTypeLibImpl->implib_list);
    list_init(&pTypeLibImpl->custdata_list);
    list_init(&pTypeLibImpl->name_list);
    list_init(&pTypeLibImpl->string_list);
    list_init(&pTypeLibImpl->guid_list);
    list_init(&pTypeLibImpl->ref_list);
    pTypeLibImpl->dispatch_href = -1;

    return pTypeLibImpl;
}
