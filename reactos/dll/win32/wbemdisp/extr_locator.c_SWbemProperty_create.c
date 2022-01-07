
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct property {int refs; TYPE_1__ ISWbemProperty_iface; int name; int * object; } ;
typedef int IWbemClassObject ;
typedef TYPE_1__ ISWbemProperty ;
typedef int HRESULT ;
typedef int BSTR ;


 int E_OUTOFMEMORY ;
 int IWbemClassObject_AddRef (int *) ;
 int S_OK ;
 int SysAllocStringLen (int ,int ) ;
 int SysStringLen (int ) ;
 int TRACE (char*,...) ;
 struct property* heap_alloc (int) ;
 int property_vtbl ;

__attribute__((used)) static HRESULT SWbemProperty_create( IWbemClassObject *wbem_object, BSTR name, ISWbemProperty **obj )
{
    struct property *property;

    TRACE( "%p, %p\n", obj, wbem_object );

    if (!(property = heap_alloc( sizeof(*property) ))) return E_OUTOFMEMORY;
    property->ISWbemProperty_iface.lpVtbl = &property_vtbl;
    property->refs = 1;
    property->object = wbem_object;
    IWbemClassObject_AddRef( property->object );
    property->name = SysAllocStringLen( name, SysStringLen( name ) );
    *obj = &property->ISWbemProperty_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
