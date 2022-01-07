
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct enumvar {int refs; TYPE_1__ IEnumVARIANT_iface; int * objectenum; } ;
typedef int IEnumWbemClassObject ;
typedef TYPE_1__ IEnumVARIANT ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IEnumWbemClassObject_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int enumvar_vtbl ;
 struct enumvar* heap_alloc (int) ;

__attribute__((used)) static HRESULT EnumVARIANT_create( IEnumWbemClassObject *objectenum, IEnumVARIANT **obj )
{
    struct enumvar *enumvar;

    if (!(enumvar = heap_alloc( sizeof(*enumvar) ))) return E_OUTOFMEMORY;
    enumvar->IEnumVARIANT_iface.lpVtbl = &enumvar_vtbl;
    enumvar->refs = 1;
    enumvar->objectenum = objectenum;
    IEnumWbemClassObject_AddRef( enumvar->objectenum );

    *obj = &enumvar->IEnumVARIANT_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
