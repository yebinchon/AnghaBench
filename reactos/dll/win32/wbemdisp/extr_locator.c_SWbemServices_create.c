
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpVtbl; } ;
struct services {int refs; TYPE_1__ ISWbemServices_iface; int * services; } ;
typedef int IWbemServices ;
typedef TYPE_1__ ISWbemServices ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IWbemServices_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,...) ;
 struct services* heap_alloc (int) ;
 int services_vtbl ;

__attribute__((used)) static HRESULT SWbemServices_create( IWbemServices *wbem_services, ISWbemServices **obj )
{
    struct services *services;

    TRACE( "%p, %p\n", obj, wbem_services );

    if (!(services = heap_alloc( sizeof(*services) ))) return E_OUTOFMEMORY;
    services->ISWbemServices_iface.lpVtbl = &services_vtbl;
    services->refs = 1;
    services->services = wbem_services;
    IWbemServices_AddRef( services->services );

    *obj = &services->ISWbemServices_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
