#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_10__ {int VirtualAddress; } ;
struct TYPE_7__ {scalar_t__ HighPart; scalar_t__ LowPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_8__ {char* BaseAddress; void* AllocationBase; int AllocationProtect; int State; int Type; int /*<<< orphan*/  Protect; int /*<<< orphan*/  RegionSize; } ;
typedef  int SIZE_T ;
typedef  int NTSTATUS ;
typedef  TYPE_2__ MEMORY_BASIC_INFORMATION ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ERROR_INVALID_ADDRESS ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 void* FUNC6 (char const*) ; 
 int MEM_COMMIT ; 
 void* FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int PAGE_EXECUTE_WRITECOPY ; 
 int PAGE_READONLY ; 
 int SEC_IMAGE ; 
 int STATUS_IMAGE_NOT_AT_BASE ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (char*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  page_size ; 
 TYPE_4__ section ; 

__attribute__((used)) static void FUNC14(const char *dll_name, DWORD scn_page_access, BOOL is_dll)
{
    HANDLE hfile, hmap;
    NTSTATUS status;
    LARGE_INTEGER offset;
    SIZE_T size;
    void *addr1, *addr2;
    MEMORY_BASIC_INFORMATION info;

    if (!&pNtMapViewOfSection) return;

    FUNC8(0xdeadbeef);
    hfile = FUNC1(dll_name, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, 0);
    FUNC11(hfile != INVALID_HANDLE_VALUE, "CreateFile error %d\n", FUNC5());

    FUNC8(0xdeadbeef);
    hmap = FUNC2(hfile, NULL, PAGE_READONLY | SEC_IMAGE, 0, 0, 0);
    FUNC11(hmap != 0, "CreateFileMapping error %d\n", FUNC5());

    offset.u.LowPart  = 0;
    offset.u.HighPart = 0;

    addr1 = NULL;
    size = 0;
    status = FUNC12(hmap, FUNC4(), &addr1, 0, 0, &offset,
                                 &size, 1 /* ViewShare */, 0, PAGE_READONLY);
    FUNC11(status == STATUS_SUCCESS, "NtMapViewOfSection error %x\n", status);
    FUNC11(addr1 != 0, "mapped address should be valid\n");

    FUNC8(0xdeadbeef);
    size = FUNC10((char *)addr1 + section.VirtualAddress, &info, sizeof(info));
    FUNC11(size == sizeof(info), "VirtualQuery error %d\n", FUNC5());
    FUNC11(info.BaseAddress == (char *)addr1 + section.VirtualAddress, "got %p != expected %p\n", info.BaseAddress, (char *)addr1 + section.VirtualAddress);
    FUNC11(info.RegionSize == page_size, "got %#lx != expected %#x\n", info.RegionSize, page_size);
    FUNC11(info.Protect == scn_page_access, "got %#x != expected %#x\n", info.Protect, scn_page_access);
    FUNC11(info.AllocationBase == addr1, "%p != %p\n", info.AllocationBase, addr1);
    FUNC11(info.AllocationProtect == PAGE_EXECUTE_WRITECOPY, "%#x != PAGE_EXECUTE_WRITECOPY\n", info.AllocationProtect);
    FUNC11(info.State == MEM_COMMIT, "%#x != MEM_COMMIT\n", info.State);
    FUNC11(info.Type == SEC_IMAGE, "%#x != SEC_IMAGE\n", info.Type);

    addr2 = NULL;
    size = 0;
    status = FUNC12(hmap, FUNC4(), &addr2, 0, 0, &offset,
                                 &size, 1 /* ViewShare */, 0, PAGE_READONLY);
    FUNC11(status == STATUS_IMAGE_NOT_AT_BASE, "expected STATUS_IMAGE_NOT_AT_BASE, got %x\n", status);
    FUNC11(addr2 != 0, "mapped address should be valid\n");
    FUNC11(addr2 != addr1, "mapped addresses should be different\n");

    FUNC8(0xdeadbeef);
    size = FUNC10((char *)addr2 + section.VirtualAddress, &info, sizeof(info));
    FUNC11(size == sizeof(info), "VirtualQuery error %d\n", FUNC5());
    FUNC11(info.BaseAddress == (char *)addr2 + section.VirtualAddress, "got %p != expected %p\n", info.BaseAddress, (char *)addr2 + section.VirtualAddress);
    FUNC11(info.RegionSize == page_size, "got %#lx != expected %#x\n", info.RegionSize, page_size);
    FUNC11(info.Protect == scn_page_access, "got %#x != expected %#x\n", info.Protect, scn_page_access);
    FUNC11(info.AllocationBase == addr2, "%p != %p\n", info.AllocationBase, addr2);
    FUNC11(info.AllocationProtect == PAGE_EXECUTE_WRITECOPY, "%#x != PAGE_EXECUTE_WRITECOPY\n", info.AllocationProtect);
    FUNC11(info.State == MEM_COMMIT, "%#x != MEM_COMMIT\n", info.State);
    FUNC11(info.Type == SEC_IMAGE, "%#x != SEC_IMAGE\n", info.Type);

    status = FUNC13(FUNC4(), addr2);
    FUNC11(status == STATUS_SUCCESS, "NtUnmapViewOfSection error %x\n", status);

    addr2 = FUNC7(hmap, 0, 0, 0, 0);
    FUNC11(addr2 != 0, "mapped address should be valid\n");
    FUNC11(addr2 != addr1, "mapped addresses should be different\n");

    FUNC8(0xdeadbeef);
    size = FUNC10((char *)addr2 + section.VirtualAddress, &info, sizeof(info));
    FUNC11(size == sizeof(info), "VirtualQuery error %d\n", FUNC5());
    FUNC11(info.BaseAddress == (char *)addr2 + section.VirtualAddress, "got %p != expected %p\n", info.BaseAddress, (char *)addr2 + section.VirtualAddress);
    FUNC11(info.RegionSize == page_size, "got %#lx != expected %#x\n", info.RegionSize, page_size);
    FUNC11(info.Protect == scn_page_access, "got %#x != expected %#x\n", info.Protect, scn_page_access);
    FUNC11(info.AllocationBase == addr2, "%p != %p\n", info.AllocationBase, addr2);
    FUNC11(info.AllocationProtect == PAGE_EXECUTE_WRITECOPY, "%#x != PAGE_EXECUTE_WRITECOPY\n", info.AllocationProtect);
    FUNC11(info.State == MEM_COMMIT, "%#x != MEM_COMMIT\n", info.State);
    FUNC11(info.Type == SEC_IMAGE, "%#x != SEC_IMAGE\n", info.Type);

    FUNC9(addr2);

    FUNC8(0xdeadbeef);
    addr2 = FUNC6(dll_name);
    if (is_dll)
    {
        FUNC11(!addr2, "LoadLibrary should fail, is_dll %d\n", is_dll);
        FUNC11(FUNC5() == ERROR_INVALID_ADDRESS, "expected ERROR_INVALID_ADDRESS, got %d\n", FUNC5());
    }
    else
    {
        BOOL ret;
        FUNC11(addr2 != 0, "LoadLibrary error %d, is_dll %d\n", FUNC5(), is_dll);
        FUNC11(addr2 != addr1, "mapped addresses should be different\n");

        FUNC8(0xdeadbeef);
        ret = FUNC3(addr2);
        FUNC11(ret, "FreeLibrary error %d\n", FUNC5());
    }

    status = FUNC13(FUNC4(), addr1);
    FUNC11(status == STATUS_SUCCESS, "NtUnmapViewOfSection error %x\n", status);

    FUNC0(hmap);
    FUNC0(hfile);
}