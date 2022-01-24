#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ OriginalFirstThunk; } ;
struct TYPE_13__ {int e_lfanew; } ;
struct TYPE_12__ {scalar_t__ FirstThunk; scalar_t__ Name; } ;
struct TYPE_10__ {TYPE_1__* DataDirectory; } ;
struct TYPE_11__ {TYPE_2__ OptionalHeader; } ;
struct TYPE_9__ {scalar_t__ VirtualAddress; int /*<<< orphan*/  Size; } ;
typedef  int /*<<< orphan*/ * PIMAGE_THUNK_DATA ;
typedef  TYPE_3__* PIMAGE_NT_HEADERS ;
typedef  TYPE_4__* PIMAGE_IMPORT_DESCRIPTOR ;
typedef  TYPE_5__* PIMAGE_DOS_HEADER ;
typedef  TYPE_4__* LPCSTR ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 size_t IMAGE_DIRECTORY_ENTRY_IMPORT ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_7__ FUNC2 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HMODULE kernel32_module = NULL;
    PIMAGE_DOS_HEADER d_header;
    PIMAGE_NT_HEADERS nt_headers;
    DWORD import_dir_size;
    DWORD_PTR dir_offset;
    PIMAGE_IMPORT_DESCRIPTOR import_chunk;

    /* Load kernel32 module */
    kernel32_module = FUNC0("kernel32.dll");
    FUNC3( kernel32_module != NULL );

    /* Get PE header info from module image */
    d_header = (PIMAGE_DOS_HEADER) kernel32_module;
    nt_headers = (PIMAGE_NT_HEADERS) (((char*) d_header) +
            d_header->e_lfanew);

    /* Get size of import entry directory */
    import_dir_size = nt_headers->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].Size;
    if (!import_dir_size)
    {
        FUNC5("Unable to continue testing due to missing import directory.\n");
        return;
    }

    /* Get address of first import chunk */
    dir_offset = nt_headers->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress;
    import_chunk = FUNC1(dir_offset, kernel32_module);
    FUNC4(import_chunk != 0, "Invalid import_chunk: %p\n", import_chunk);
    if (!import_chunk) return;

    /* Iterate through import descriptors and verify set name,
     * OriginalFirstThunk, and FirstThunk.  Core Windows DLLs, such as
     * kernel32.dll, don't use Borland-style linking, where the table of
     * imported names is stored directly in FirstThunk and overwritten
     * by the relocation, instead of being stored in OriginalFirstThunk.
     * */
    for (; import_chunk->FirstThunk; import_chunk++)
    {
        LPCSTR module_name = FUNC1(import_chunk->Name, kernel32_module);
        PIMAGE_THUNK_DATA name_table = FUNC1(
                FUNC2(*import_chunk).OriginalFirstThunk, kernel32_module);
        PIMAGE_THUNK_DATA iat = FUNC1(
                import_chunk->FirstThunk, kernel32_module);
        FUNC4(module_name != NULL, "Imported module name should not be NULL\n");
        FUNC4(name_table != NULL,
                "Name table for imported module %s should not be NULL\n",
                module_name);
        FUNC4(iat != NULL, "IAT for imported module %s should not be NULL\n",
                module_name);
    }
}