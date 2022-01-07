
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int const* lpVtbl; } ;
struct TYPE_8__ {int ref; int clsid; TYPE_1__ IWICComponentInfo_iface; } ;
struct TYPE_9__ {TYPE_2__ base; int classkey; } ;
typedef int * REFCLSID ;
typedef int IWICComponentInfoVtbl ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_2__ ComponentInfo ;
typedef TYPE_3__ BitmapDecoderInfo ;


 int BitmapDecoderInfo_Vtbl ;
 int E_OUTOFMEMORY ;
 int RegCloseKey (int ) ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;
 int read_bitmap_patterns (TYPE_3__*) ;

__attribute__((used)) static HRESULT BitmapDecoderInfo_Constructor(HKEY classkey, REFCLSID clsid, ComponentInfo **ret)
{
    BitmapDecoderInfo *This;

    This = heap_alloc_zero(sizeof(BitmapDecoderInfo));
    if (!This)
    {
        RegCloseKey(classkey);
        return E_OUTOFMEMORY;
    }

    This->base.IWICComponentInfo_iface.lpVtbl = (const IWICComponentInfoVtbl*)&BitmapDecoderInfo_Vtbl;
    This->base.ref = 1;
    This->classkey = classkey;
    This->base.clsid = *clsid;

    read_bitmap_patterns(This);

    *ret = &This->base;
    return S_OK;
}
