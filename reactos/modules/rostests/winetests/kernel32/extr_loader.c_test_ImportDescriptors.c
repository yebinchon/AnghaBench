
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ OriginalFirstThunk; } ;
struct TYPE_13__ {int e_lfanew; } ;
struct TYPE_12__ {scalar_t__ FirstThunk; scalar_t__ Name; } ;
struct TYPE_10__ {TYPE_1__* DataDirectory; } ;
struct TYPE_11__ {TYPE_2__ OptionalHeader; } ;
struct TYPE_9__ {scalar_t__ VirtualAddress; int Size; } ;
typedef int * PIMAGE_THUNK_DATA ;
typedef TYPE_3__* PIMAGE_NT_HEADERS ;
typedef TYPE_4__* PIMAGE_IMPORT_DESCRIPTOR ;
typedef TYPE_5__* PIMAGE_DOS_HEADER ;
typedef TYPE_4__* LPCSTR ;
typedef int * HMODULE ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;


 int * GetModuleHandleA (char*) ;
 size_t IMAGE_DIRECTORY_ENTRY_IMPORT ;
 void* RVAToAddr (scalar_t__,int *) ;
 TYPE_7__ U (TYPE_4__) ;
 int assert (int ) ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_ImportDescriptors(void)
{
    HMODULE kernel32_module = ((void*)0);
    PIMAGE_DOS_HEADER d_header;
    PIMAGE_NT_HEADERS nt_headers;
    DWORD import_dir_size;
    DWORD_PTR dir_offset;
    PIMAGE_IMPORT_DESCRIPTOR import_chunk;


    kernel32_module = GetModuleHandleA("kernel32.dll");
    assert( kernel32_module != ((void*)0) );


    d_header = (PIMAGE_DOS_HEADER) kernel32_module;
    nt_headers = (PIMAGE_NT_HEADERS) (((char*) d_header) +
            d_header->e_lfanew);


    import_dir_size = nt_headers->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].Size;
    if (!import_dir_size)
    {
        skip("Unable to continue testing due to missing import directory.\n");
        return;
    }


    dir_offset = nt_headers->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress;
    import_chunk = RVAToAddr(dir_offset, kernel32_module);
    ok(import_chunk != 0, "Invalid import_chunk: %p\n", import_chunk);
    if (!import_chunk) return;







    for (; import_chunk->FirstThunk; import_chunk++)
    {
        LPCSTR module_name = RVAToAddr(import_chunk->Name, kernel32_module);
        PIMAGE_THUNK_DATA name_table = RVAToAddr(
                U(*import_chunk).OriginalFirstThunk, kernel32_module);
        PIMAGE_THUNK_DATA iat = RVAToAddr(
                import_chunk->FirstThunk, kernel32_module);
        ok(module_name != ((void*)0), "Imported module name should not be NULL\n");
        ok(name_table != ((void*)0),
                "Name table for imported module %s should not be NULL\n",
                module_name);
        ok(iat != ((void*)0), "IAT for imported module %s should not be NULL\n",
                module_name);
    }
}
