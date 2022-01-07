
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IWICColorTransform_iface; int * dst; } ;
typedef TYPE_1__ IWICColorTransform ;
typedef int HRESULT ;
typedef TYPE_2__ ColorTransform ;


 int ColorTransform_Vtbl ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;

HRESULT ColorTransform_Create(IWICColorTransform **colortransform)
{
    ColorTransform *This;

    if (!colortransform) return E_INVALIDARG;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(ColorTransform));
    if (!This) return E_OUTOFMEMORY;

    This->IWICColorTransform_iface.lpVtbl = &ColorTransform_Vtbl;
    This->ref = 1;
    This->dst = ((void*)0);

    *colortransform = &This->IWICColorTransform_iface;

    return S_OK;
}
