
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IUnknown_iface; } ;
typedef TYPE_2__ testinput ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_2__* heap_alloc (int) ;
 int testinput_vtbl ;

__attribute__((used)) static HRESULT testinput_createinstance(void **ppObj)
{
    testinput *input;

    input = heap_alloc(sizeof(*input));
    if(!input) return E_OUTOFMEMORY;

    input->IUnknown_iface.lpVtbl = &testinput_vtbl;
    input->ref = 1;

    *ppObj = &input->IUnknown_iface;

    return S_OK;
}
