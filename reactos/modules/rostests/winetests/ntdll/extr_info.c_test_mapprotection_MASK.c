#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  oldflags ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {int LowPart; scalar_t__ HighPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_8__ {int Protect; } ;
typedef  int SIZE_T ;
typedef  int NTSTATUS ;
typedef  TYPE_2__ MEMORY_BASIC_INFORMATION ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  MEM_EXECUTE_OPTION_ENABLE ; 
 int /*<<< orphan*/  MemoryBasicInformation ; 
 int PAGE_NOCACHE ; 
 int PAGE_READWRITE ; 
 int /*<<< orphan*/  ProcessExecuteFlags ; 
 int SECTION_MAP_EXECUTE ; 
 int SECTION_MAP_READ ; 
 int SECTION_MAP_WRITE ; 
 int SECTION_QUERY ; 
 int SEC_COMMIT ; 
 int SEC_NOCACHE ; 
 int STANDARD_RIGHTS_REQUIRED ; 
 int STATUS_INVALID_INFO_CLASS ; 
 int STATUS_INVALID_PARAMETER ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  ViewShare ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    HANDLE h;
    void* addr;
    MEMORY_BASIC_INFORMATION info;
    ULONG oldflags, flagsize, flags = MEM_EXECUTE_OPTION_ENABLE;
    LARGE_INTEGER size, offset;
    NTSTATUS status;
    SIZE_T retlen, count;
    void (*f)(void);

    if (!&pNtClose) {
        FUNC9("No NtClose ... Win98\n");
        return;
    }
    /* Switch to being a noexec unaware process */
    status = FUNC5( FUNC0(), ProcessExecuteFlags, &oldflags, sizeof (oldflags), &flagsize);
    if (status == STATUS_INVALID_PARAMETER) {
        FUNC9("Invalid Parameter on ProcessExecuteFlags query?\n");
        return;
    }
    FUNC1( (status == STATUS_SUCCESS) || (status == STATUS_INVALID_INFO_CLASS), "Expected STATUS_SUCCESS, got %08x\n", status);
    status = FUNC7( FUNC0(), ProcessExecuteFlags, &flags, sizeof(flags) );
    FUNC1( (status == STATUS_SUCCESS) || (status == STATUS_INVALID_INFO_CLASS), "Expected STATUS_SUCCESS, got %08x\n", status);

    size.u.LowPart  = 0x2000;
    size.u.HighPart = 0;
    status = FUNC3 ( &h,
        STANDARD_RIGHTS_REQUIRED | SECTION_QUERY | SECTION_MAP_READ | SECTION_MAP_WRITE | SECTION_MAP_EXECUTE,
        NULL,
        &size,
        PAGE_READWRITE,
        SEC_COMMIT | SEC_NOCACHE,
        0
    );
    FUNC1( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);

    offset.u.LowPart  = 0;
    offset.u.HighPart = 0;
    count = 0x2000;
    addr = NULL;
    status = FUNC4 ( h, FUNC0(), &addr, 0, 0, &offset, &count, ViewShare, 0, PAGE_READWRITE);
    FUNC1( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);

#if defined(__x86_64__) || defined(__i386__)
    *(unsigned char*)addr = 0xc3;       /* lret ... in both i386 and x86_64 */
#elif defined(__arm__)
    *(unsigned long*)addr = 0xe12fff1e; /* bx lr */
#elif defined(__aarch64__)
    *(unsigned long*)addr = 0xd65f03c0; /* ret */
#else
    ok(0, "Add a return opcode for your architecture or expect a crash in this test\n");
#endif
    FUNC10("trying to execute code in the readwrite only mapped anon file...\n");
    f = addr;f();
    FUNC10("...done.\n");

    status = FUNC6( FUNC0(), addr, MemoryBasicInformation, &info, sizeof(info), &retlen );
    FUNC1( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC1( retlen == sizeof(info), "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC1((info.Protect & ~PAGE_NOCACHE) == PAGE_READWRITE, "addr.Protect is not PAGE_READWRITE, but 0x%x\n", info.Protect);

    status = FUNC8( FUNC0(), (char *)addr + 0x1050 );
    FUNC1( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC2 (h);

    /* Switch back */
    FUNC7( FUNC0(), ProcessExecuteFlags, &oldflags, sizeof(oldflags) );
}