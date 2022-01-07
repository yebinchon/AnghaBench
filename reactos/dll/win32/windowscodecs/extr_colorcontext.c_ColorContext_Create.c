
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; unsigned int exif_color_space; TYPE_1__ IWICColorContext_iface; scalar_t__ profile_len; int * profile; scalar_t__ type; } ;
typedef TYPE_1__ IWICColorContext ;
typedef int HRESULT ;
typedef TYPE_2__ ColorContext ;


 int ColorContext_Vtbl ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;

HRESULT ColorContext_Create(IWICColorContext **colorcontext)
{
    ColorContext *This;

    if (!colorcontext) return E_INVALIDARG;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(ColorContext));
    if (!This) return E_OUTOFMEMORY;

    This->IWICColorContext_iface.lpVtbl = &ColorContext_Vtbl;
    This->ref = 1;
    This->type = 0;
    This->profile = ((void*)0);
    This->profile_len = 0;
    This->exif_color_space = ~0u;

    *colorcontext = &This->IWICColorContext_iface;

    return S_OK;
}
