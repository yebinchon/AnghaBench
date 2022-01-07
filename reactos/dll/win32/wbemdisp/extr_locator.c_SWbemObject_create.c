
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct object {int refs; TYPE_1__ ISWbemObject_iface; int last_dispid_method; int last_dispid; scalar_t__ nb_members; int * members; int * object; } ;
typedef int IWbemClassObject ;
typedef TYPE_1__ ISWbemObject ;
typedef int HRESULT ;


 int DISPID_BASE ;
 int DISPID_BASE_METHOD ;
 int E_OUTOFMEMORY ;
 int IWbemClassObject_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,...) ;
 struct object* heap_alloc (int) ;
 int object_vtbl ;

__attribute__((used)) static HRESULT SWbemObject_create( IWbemClassObject *wbem_object, ISWbemObject **obj )
{
    struct object *object;

    TRACE( "%p, %p\n", obj, wbem_object );

    if (!(object = heap_alloc( sizeof(*object) ))) return E_OUTOFMEMORY;
    object->ISWbemObject_iface.lpVtbl = &object_vtbl;
    object->refs = 1;
    object->object = wbem_object;
    IWbemClassObject_AddRef( object->object );
    object->members = ((void*)0);
    object->nb_members = 0;
    object->last_dispid = DISPID_BASE;
    object->last_dispid_method = DISPID_BASE_METHOD;

    *obj = &object->ISWbemObject_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
