#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long ULONG ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 unsigned long MEM_DECOMMIT ; 
 unsigned long MEM_RELEASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ STATUS_INVALID_PARAMETER_4 ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
    NTSTATUS Status;
    ULONG FreeType;
    int i;

    // 4th parameter: "ULONG FreeType".

    // A type is mandatory.
    Status = FUNC0(NULL, NULL, NULL, 0ul);
    FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);

    // All but MEM_DECOMMIT and MEM_RELEASE are unsupported.
    // Each bit one by one.
    for (i = 0; i < 32; ++i)
    {
        FreeType = 1 << i;
        if (FreeType == MEM_DECOMMIT || FreeType == MEM_RELEASE)
            continue;

        Status = FUNC0(NULL, NULL, NULL, FreeType);
        FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    }
    // All bits at once.
    // Not testing all other values.
    Status = FUNC0(NULL, NULL, NULL, ~(MEM_DECOMMIT | MEM_RELEASE));
    FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    Status = FUNC0(NULL, NULL, NULL, ~MEM_DECOMMIT);
    FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    Status = FUNC0(NULL, NULL, NULL, ~MEM_RELEASE);
    FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    Status = FUNC0(NULL, NULL, NULL, ~0ul);
    FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);

    // MEM_DECOMMIT and MEM_RELEASE are exclusive.
    Status = FUNC0(NULL, NULL, NULL, MEM_DECOMMIT | MEM_RELEASE);
    FUNC1(Status == STATUS_INVALID_PARAMETER_4, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
}