
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int const* lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_6__ IWICComponentInfo_iface; int clsid; } ;
struct TYPE_7__ {TYPE_2__ base; int classkey; } ;
typedef int * REFCLSID ;
typedef TYPE_1__ MetadataReaderInfo ;
typedef int IWICComponentInfoVtbl ;
typedef int HRESULT ;
typedef int HKEY ;
typedef TYPE_2__ ComponentInfo ;


 int E_OUTOFMEMORY ;
 int IWICComponentInfo_Release (TYPE_6__*) ;
 int MetadataReaderInfo_Vtbl ;
 int RegCloseKey (int ) ;
 int S_OK ;
 int WINCODEC_ERR_COMPONENTNOTFOUND ;
 TYPE_1__* heap_alloc_zero (int) ;
 int read_metadata_info (TYPE_1__*) ;

__attribute__((used)) static HRESULT MetadataReaderInfo_Constructor(HKEY classkey, REFCLSID clsid, ComponentInfo **info)
{
    MetadataReaderInfo *This;

    This = heap_alloc_zero(sizeof(*This));
    if (!This)
    {
        RegCloseKey(classkey);
        return E_OUTOFMEMORY;
    }

    This->base.IWICComponentInfo_iface.lpVtbl = (const IWICComponentInfoVtbl*)&MetadataReaderInfo_Vtbl;
    This->base.ref = 1;
    This->classkey = classkey;
    This->base.clsid = *clsid;

    if (!read_metadata_info(This))
    {
        IWICComponentInfo_Release(&This->base.IWICComponentInfo_iface);
        return WINCODEC_ERR_COMPONENTNOTFOUND;
    }

    *info = &This->base;
    return S_OK;
}
