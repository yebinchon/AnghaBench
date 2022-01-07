
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct locator {int refs; TYPE_1__ ISWbemLocator_iface; int * locator; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,void*) ;
 struct locator* heap_alloc (int) ;
 int locator_vtbl ;

HRESULT SWbemLocator_create( void **obj )
{
    struct locator *locator;

    TRACE( "%p\n", obj );

    if (!(locator = heap_alloc( sizeof(*locator) ))) return E_OUTOFMEMORY;
    locator->ISWbemLocator_iface.lpVtbl = &locator_vtbl;
    locator->refs = 1;
    locator->locator = ((void*)0);

    *obj = &locator->ISWbemLocator_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
