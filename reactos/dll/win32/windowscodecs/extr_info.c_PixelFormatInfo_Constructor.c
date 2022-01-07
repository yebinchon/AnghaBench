
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int const* lpVtbl; } ;
struct TYPE_8__ {int ref; int clsid; TYPE_1__ IWICComponentInfo_iface; } ;
struct TYPE_7__ {TYPE_3__ base; int classkey; } ;
typedef int * REFCLSID ;
typedef TYPE_2__ PixelFormatInfo ;
typedef int IWICComponentInfoVtbl ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_3__ ComponentInfo ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int PixelFormatInfo_Vtbl ;
 int RegCloseKey (int ) ;
 int S_OK ;

__attribute__((used)) static HRESULT PixelFormatInfo_Constructor(HKEY classkey, REFCLSID clsid, ComponentInfo **ret)
{
    PixelFormatInfo *This;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(PixelFormatInfo));
    if (!This)
    {
        RegCloseKey(classkey);
        return E_OUTOFMEMORY;
    }

    This->base.IWICComponentInfo_iface.lpVtbl = (const IWICComponentInfoVtbl*)&PixelFormatInfo_Vtbl;
    This->base.ref = 1;
    This->classkey = classkey;
    This->base.clsid = *clsid;

    *ret = &This->base;
    return S_OK;
}
