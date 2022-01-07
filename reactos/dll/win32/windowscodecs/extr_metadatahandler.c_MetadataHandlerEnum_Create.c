
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int IWICMetadataWriter_iface; } ;
struct TYPE_7__ {int ref; TYPE_3__ IWICEnumMetadataItem_iface; int index; TYPE_2__* parent; } ;
typedef TYPE_1__ MetadataHandlerEnum ;
typedef TYPE_2__ MetadataHandler ;
typedef TYPE_3__ IWICEnumMetadataItem ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IWICMetadataWriter_AddRef (int *) ;
 int MetadataHandlerEnum_Vtbl ;
 int S_OK ;

__attribute__((used)) static HRESULT MetadataHandlerEnum_Create(MetadataHandler *parent, DWORD index,
    IWICEnumMetadataItem **ppIEnumMetadataItem)
{
    MetadataHandlerEnum *This;

    if (!ppIEnumMetadataItem) return E_INVALIDARG;

    *ppIEnumMetadataItem = ((void*)0);

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(MetadataHandlerEnum));
    if (!This) return E_OUTOFMEMORY;

    IWICMetadataWriter_AddRef(&parent->IWICMetadataWriter_iface);

    This->IWICEnumMetadataItem_iface.lpVtbl = &MetadataHandlerEnum_Vtbl;
    This->ref = 1;
    This->parent = parent;
    This->index = index;

    *ppIEnumMetadataItem = &This->IWICEnumMetadataItem_iface;

    return S_OK;
}
