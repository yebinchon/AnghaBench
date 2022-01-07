
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct propertyset {int refs; TYPE_1__ ISWbemPropertySet_iface; int * object; } ;
typedef int IWbemClassObject ;
typedef TYPE_1__ ISWbemPropertySet ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IWbemClassObject_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,...) ;
 struct propertyset* heap_alloc (int) ;
 int propertyset_vtbl ;

__attribute__((used)) static HRESULT SWbemPropertySet_create( IWbemClassObject *wbem_object, ISWbemPropertySet **obj )
{
    struct propertyset *propertyset;

    TRACE( "%p, %p\n", obj, wbem_object );

    if (!(propertyset = heap_alloc( sizeof(*propertyset) ))) return E_OUTOFMEMORY;
    propertyset->ISWbemPropertySet_iface.lpVtbl = &propertyset_vtbl;
    propertyset->refs = 1;
    propertyset->object = wbem_object;
    IWbemClassObject_AddRef( propertyset->object );
    *obj = &propertyset->ISWbemPropertySet_iface;

    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
