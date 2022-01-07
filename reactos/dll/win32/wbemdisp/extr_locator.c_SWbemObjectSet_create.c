
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct objectset {int refs; TYPE_1__ ISWbemObjectSet_iface; int * objectenum; int count; } ;
typedef TYPE_1__ ISWbemObjectSet ;
typedef int IEnumWbemClassObject ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IEnumWbemClassObject_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,...) ;
 int get_object_count (int *) ;
 struct objectset* heap_alloc (int) ;
 int objectset_vtbl ;

__attribute__((used)) static HRESULT SWbemObjectSet_create( IEnumWbemClassObject *wbem_objectenum, ISWbemObjectSet **obj )
{
    struct objectset *objectset;

    TRACE( "%p, %p\n", obj, wbem_objectenum );

    if (!(objectset = heap_alloc( sizeof(*objectset) ))) return E_OUTOFMEMORY;
    objectset->ISWbemObjectSet_iface.lpVtbl = &objectset_vtbl;
    objectset->refs = 1;
    objectset->objectenum = wbem_objectenum;
    IEnumWbemClassObject_AddRef( objectset->objectenum );
    objectset->count = get_object_count( objectset->objectenum );

    *obj = &objectset->ISWbemObjectSet_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
