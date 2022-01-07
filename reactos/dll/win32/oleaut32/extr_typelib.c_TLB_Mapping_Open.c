
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; scalar_t__ file; TYPE_2__ IUnknown_iface; int * typelib_base; int * mapping; } ;
typedef TYPE_1__ TLB_Mapping ;
typedef int * LPVOID ;
typedef int LPCWSTR ;
typedef TYPE_2__ IUnknown ;
typedef int HRESULT ;
typedef int DWORD ;


 int * CreateFileMappingW (scalar_t__,int *,int,int ,int ,int *) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int ) ;
 int E_OUTOFMEMORY ;
 int FILE_MAP_READ ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IUnknown_Release (TYPE_2__*) ;
 int * MapViewOfFile (int *,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int SEC_COMMIT ;
 int S_OK ;
 int TLB_Mapping_Vtable ;
 int TYPE_E_CANTLOADLIBRARY ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static HRESULT TLB_Mapping_Open(LPCWSTR path, LPVOID *ppBase, DWORD *pdwTLBLength, IUnknown **ppFile)
{
    TLB_Mapping *This;

    This = heap_alloc(sizeof(TLB_Mapping));
    if (!This)
        return E_OUTOFMEMORY;

    This->IUnknown_iface.lpVtbl = &TLB_Mapping_Vtable;
    This->refs = 1;
    This->file = INVALID_HANDLE_VALUE;
    This->mapping = ((void*)0);
    This->typelib_base = ((void*)0);

    This->file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, 0);
    if (INVALID_HANDLE_VALUE != This->file)
    {
        This->mapping = CreateFileMappingW(This->file, ((void*)0), PAGE_READONLY | SEC_COMMIT, 0, 0, ((void*)0));
        if (This->mapping)
        {
            This->typelib_base = MapViewOfFile(This->mapping, FILE_MAP_READ, 0, 0, 0);
            if(This->typelib_base)
            {

                *pdwTLBLength = GetFileSize(This->file, ((void*)0));
                *ppBase = This->typelib_base;
                *ppFile = &This->IUnknown_iface;
                return S_OK;
            }
        }
    }

    IUnknown_Release(&This->IUnknown_iface);
    return TYPE_E_CANTLOADLIBRARY;
}
