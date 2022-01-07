
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; TYPE_2__ IUnknown_iface; int * typelib_base; int * typelib_resource; int * dll; int * typelib_global; } ;
typedef TYPE_1__ TLB_PEFile ;
typedef int * LPVOID ;
typedef int LPCWSTR ;
typedef TYPE_2__ IUnknown ;
typedef int INT ;
typedef int HRESULT ;
typedef int DWORD ;


 int DONT_RESOLVE_DLL_REFERENCES ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int * FindResourceW (int *,int ,char const*) ;
 int LOAD_LIBRARY_AS_DATAFILE ;
 int LOAD_WITH_ALTERED_SEARCH_PATH ;
 int * LoadLibraryExW (int ,int ,int) ;
 int * LoadResource (int *,int *) ;
 int * LockResource (int *) ;
 int MAKEINTRESOURCEW (int ) ;
 int S_OK ;
 int SizeofResource (int *,int *) ;
 int TLB_PEFile_Release (TYPE_2__*) ;
 int TLB_PEFile_Vtable ;
 int TRACE (char*) ;
 int TYPE_E_CANTLOADLIBRARY ;
 TYPE_1__* heap_alloc (int) ;

__attribute__((used)) static HRESULT TLB_PEFile_Open(LPCWSTR path, INT index, LPVOID *ppBase, DWORD *pdwTLBLength, IUnknown **ppFile)
{
    TLB_PEFile *This;
    HRESULT hr = TYPE_E_CANTLOADLIBRARY;

    This = heap_alloc(sizeof(TLB_PEFile));
    if (!This)
        return E_OUTOFMEMORY;

    This->IUnknown_iface.lpVtbl = &TLB_PEFile_Vtable;
    This->refs = 1;
    This->dll = ((void*)0);
    This->typelib_resource = ((void*)0);
    This->typelib_global = ((void*)0);
    This->typelib_base = ((void*)0);

    This->dll = LoadLibraryExW(path, 0, DONT_RESOLVE_DLL_REFERENCES |
                    LOAD_LIBRARY_AS_DATAFILE | LOAD_WITH_ALTERED_SEARCH_PATH);

    if (This->dll)
    {
        static const WCHAR TYPELIBW[] = {'T','Y','P','E','L','I','B',0};
        This->typelib_resource = FindResourceW(This->dll, MAKEINTRESOURCEW(index), TYPELIBW);
        if (This->typelib_resource)
        {
            This->typelib_global = LoadResource(This->dll, This->typelib_resource);
            if (This->typelib_global)
            {
                This->typelib_base = LockResource(This->typelib_global);

                if (This->typelib_base)
                {
                    *pdwTLBLength = SizeofResource(This->dll, This->typelib_resource);
                    *ppBase = This->typelib_base;
                    *ppFile = &This->IUnknown_iface;
                    return S_OK;
                }
            }
        }

        TRACE("No TYPELIB resource found\n");
        hr = E_FAIL;
    }

    TLB_PEFile_Release(&This->IUnknown_iface);
    return hr;
}
