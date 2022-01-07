
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDataObject_iface; } ;
typedef TYPE_1__ IDataObjectImpl ;
typedef TYPE_2__ IDataObject ;


 int IDataObjectImpl_Vtbl ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static IDataObject* IDataObjectImpl_Construct(void)
{
    IDataObjectImpl *obj;

    obj = heap_alloc(sizeof(*obj));
    obj->IDataObject_iface.lpVtbl = &IDataObjectImpl_Vtbl;
    obj->ref = 1;

    return &obj->IDataObject_iface;
}
