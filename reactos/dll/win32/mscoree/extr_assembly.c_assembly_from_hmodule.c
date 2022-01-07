
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * data; scalar_t__ is_mapped_file; } ;
typedef int HRESULT ;
typedef scalar_t__ HMODULE ;
typedef int BYTE ;
typedef TYPE_1__ ASSEMBLY ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 scalar_t__ SUCCEEDED (int ) ;
 int assembly_release (TYPE_1__*) ;
 int parse_headers (TYPE_1__*) ;

HRESULT assembly_from_hmodule(ASSEMBLY **out, HMODULE hmodule)
{
    ASSEMBLY *assembly;
    HRESULT hr;

    *out = ((void*)0);

    assembly = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(ASSEMBLY));
    if (!assembly)
        return E_OUTOFMEMORY;

    assembly->is_mapped_file = 0;

    assembly->data = (BYTE*)hmodule;

    hr = parse_headers(assembly);
    if (SUCCEEDED(hr))
        *out = assembly;
    else
        assembly_release(assembly);

    return hr;
}
