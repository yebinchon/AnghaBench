
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IWICMetadataQueryReader_iface; int * root; int * block; } ;
typedef TYPE_1__ QueryReader ;
typedef TYPE_2__ IWICMetadataQueryReader ;
typedef int IWICMetadataBlockReader ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IWICMetadataBlockReader_AddRef (int *) ;
 int S_OK ;
 int * heap_strdupW (int const*) ;
 int mqr_vtbl ;

HRESULT MetadataQueryReader_CreateInstance(IWICMetadataBlockReader *mbr, const WCHAR *root, IWICMetadataQueryReader **out)
{
    QueryReader *obj;

    obj = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*obj));
    if (!obj)
        return E_OUTOFMEMORY;

    obj->IWICMetadataQueryReader_iface.lpVtbl = &mqr_vtbl;
    obj->ref = 1;

    IWICMetadataBlockReader_AddRef(mbr);
    obj->block = mbr;

    obj->root = root ? heap_strdupW(root) : ((void*)0);

    *out = &obj->IWICMetadataQueryReader_iface;

    return S_OK;
}
