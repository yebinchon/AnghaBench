
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_rstart; int current_rstop; int * clock; int * tonotify; int * self; int * input; } ;
typedef TYPE_1__ QualityControlImpl ;
typedef int IPin ;
typedef int IBaseFilter ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,...) ;

HRESULT QualityControlImpl_Create(IPin *input, IBaseFilter *self, QualityControlImpl **ppv)
{
    QualityControlImpl *This;
    TRACE("%p, %p, %p\n", input, self, ppv);
    *ppv = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(QualityControlImpl));
    if (!*ppv)
        return E_OUTOFMEMORY;
    This = *ppv;
    This->input = input;
    This->self = self;
    This->tonotify = ((void*)0);
    This->clock = ((void*)0);
    This->current_rstart = This->current_rstop = -1;
    TRACE("-> %p\n", This);
    return S_OK;
}
