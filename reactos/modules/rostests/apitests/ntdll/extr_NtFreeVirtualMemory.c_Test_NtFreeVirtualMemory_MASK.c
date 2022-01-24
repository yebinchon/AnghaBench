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
typedef  int ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int SIZE_T ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_DECOMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  MEM_RESERVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int PAGE_SIZE ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_UNABLE_TO_FREE_VM ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
    PVOID Buffer = NULL, Buffer2;
    SIZE_T Length = PAGE_SIZE;
    NTSTATUS Status;
    
    Status = FUNC1(FUNC2(),
                                     &Buffer,
                                     0,
                                     &Length,
                                     MEM_RESERVE,
                                     PAGE_READWRITE);
    FUNC4(FUNC0(Status), "NtAllocateVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(((ULONG_PTR)Buffer % PAGE_SIZE) == 0, "The buffer is not aligned to PAGE_SIZE.\n"); 
    
    Status = FUNC3(FUNC2(),
                                 &Buffer,
                                 &Length,
                                 MEM_DECOMMIT);
    FUNC4(Status == STATUS_SUCCESS, "NtFreeVirtualMemory failed : 0x%08lx\n", Status);
    
    /* Now try to free more than we got */
    Length++;
    Status = FUNC3(FUNC2(),
                                 &Buffer,
                                 &Length,
                                 MEM_DECOMMIT);
    FUNC4(Status == STATUS_UNABLE_TO_FREE_VM, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    
    Status = FUNC3(FUNC2(),
                                 &Buffer,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(Status == STATUS_UNABLE_TO_FREE_VM, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    
    /* Free out of bounds from the wrong origin */
    Length = PAGE_SIZE;
    Buffer2 = (PVOID)((ULONG_PTR)Buffer+1);
    
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_DECOMMIT);
    FUNC4(Status == STATUS_UNABLE_TO_FREE_VM, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    
    Buffer2 = (PVOID)((ULONG_PTR)Buffer+1);
    Length = PAGE_SIZE;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(Status == STATUS_UNABLE_TO_FREE_VM, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    
    /* Same but in bounds */
    Length = PAGE_SIZE - 1;
    Buffer2 = (PVOID)((ULONG_PTR)Buffer+1);
    
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_DECOMMIT);
    FUNC4(Status == STATUS_SUCCESS, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    FUNC4(Buffer2 == Buffer, "NtFreeVirtualMemory set wrong buffer.\n");
    FUNC4(Length == PAGE_SIZE, "NtFreeVirtualMemory did not round Length to PAGE_SIZE.\n");
    
    Buffer2 = (PVOID)((ULONG_PTR)Buffer+1);
    Length = PAGE_SIZE-1;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(Status == STATUS_SUCCESS, "NtFreeVirtualMemory returned status : 0x%08lx\n", Status);
    FUNC4(Buffer2 == Buffer, "NtFreeVirtualMemory set wrong buffer.\n");
    FUNC4(Length == PAGE_SIZE, "NtFreeVirtualMemory did not round Length to PAGE_SIZE.\n");
    
    /* Now allocate two pages and try to free them one after the other */
    Length = 2*PAGE_SIZE;
    Status = FUNC1(FUNC2(),
                                     &Buffer,
                                     0,
                                     &Length,
                                     MEM_RESERVE,
                                     PAGE_READWRITE);
    FUNC4(FUNC0(Status), "NtAllocateVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == 2*PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(((ULONG_PTR)Buffer % PAGE_SIZE) == 0, "The buffer is not aligned to PAGE_SIZE.\n");
    
    Buffer2 = Buffer;
    Length = PAGE_SIZE;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(FUNC0(Status), "NtFreeVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(Buffer2 == Buffer, "The buffer is not aligned to PAGE_SIZE.\n");

    Buffer2 = (PVOID)((ULONG_PTR)Buffer+PAGE_SIZE);
    Length = PAGE_SIZE;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(FUNC0(Status), "NtFreeVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(Buffer2 == (PVOID)((ULONG_PTR)Buffer+PAGE_SIZE), "The buffer is not aligned to PAGE_SIZE.\n");
    
    /* Same, but try to free the second page before the first one */
    Length = 2*PAGE_SIZE;
    Status = FUNC1(FUNC2(),
                                     &Buffer,
                                     0,
                                     &Length,
                                     MEM_RESERVE,
                                     PAGE_READWRITE);
    FUNC4(FUNC0(Status), "NtAllocateVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == 2*PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(((ULONG_PTR)Buffer % PAGE_SIZE) == 0, "The buffer is not aligned to PAGE_SIZE.\n");
    
    Buffer2 = (PVOID)((ULONG_PTR)Buffer+PAGE_SIZE);
    Length = PAGE_SIZE;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(FUNC0(Status), "NtFreeVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(Buffer2 == (PVOID)((ULONG_PTR)Buffer+PAGE_SIZE), "The buffer is not aligned to PAGE_SIZE.\n");
    
    Buffer2 = Buffer;
    Length = PAGE_SIZE;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(FUNC0(Status), "NtFreeVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(Buffer2 == Buffer, "The buffer is not aligned to PAGE_SIZE.\n");
    
    /* Now allocate two pages and try to free them in the middle */
    Length = 2*PAGE_SIZE;
    Status = FUNC1(FUNC2(),
                                     &Buffer,
                                     0,
                                     &Length,
                                     MEM_RESERVE,
                                     PAGE_READWRITE);
    FUNC4(FUNC0(Status), "NtAllocateVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == 2*PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(((ULONG_PTR)Buffer % PAGE_SIZE) == 0, "The buffer is not aligned to PAGE_SIZE.\n");
    
    Buffer2 = (PVOID)((ULONG_PTR)Buffer+1);
    Length = PAGE_SIZE;
    Status = FUNC3(FUNC2(),
                                 &Buffer2,
                                 &Length,
                                 MEM_RELEASE);
    FUNC4(FUNC0(Status), "NtFreeVirtualMemory failed : 0x%08lx\n", Status);
    FUNC4(Length == 2*PAGE_SIZE, "Length mismatch : 0x%08lx\n", (ULONG)Length);
    FUNC4(Buffer2 == Buffer, "The buffer is not aligned to PAGE_SIZE.\n");
}