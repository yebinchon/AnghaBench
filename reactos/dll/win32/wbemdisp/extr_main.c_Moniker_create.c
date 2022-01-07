
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct moniker {int refs; TYPE_1__ IMoniker_iface; int * obj; } ;
typedef int IUnknown ;
typedef TYPE_1__ IMoniker ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IUnknown_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,...) ;
 struct moniker* heap_alloc (int) ;
 int moniker_vtbl ;

__attribute__((used)) static HRESULT Moniker_create( IUnknown *unk, IMoniker **obj )
{
    struct moniker *moniker;

    TRACE( "%p, %p\n", unk, obj );

    if (!(moniker = heap_alloc( sizeof(*moniker) ))) return E_OUTOFMEMORY;
    moniker->IMoniker_iface.lpVtbl = &moniker_vtbl;
    moniker->refs = 1;
    moniker->obj = unk;
    IUnknown_AddRef( moniker->obj );

    *obj = &moniker->IMoniker_iface;
    TRACE( "returning iface %p\n", *obj );
    return S_OK;
}
