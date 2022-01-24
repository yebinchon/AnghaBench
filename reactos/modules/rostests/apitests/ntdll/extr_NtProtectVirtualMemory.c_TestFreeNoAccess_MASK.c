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
typedef  int ULONG ;
typedef  int SIZE_T ;
typedef  int* PVOID ;
typedef  int* PUCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int**,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int**,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  PAGE_NOACCESS ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC8(void)
{
    PVOID Mem;
    SIZE_T Size;
    NTSTATUS Status;
    ULONG Iteration, PageNumber;
    PUCHAR Page;
    ULONG OldProtection;

    for (Iteration = 0; Iteration < 50000; Iteration++)
    {
        Mem = NULL;
        Size = 16 * PAGE_SIZE;
        Status = FUNC1(FUNC2(),
                                         &Mem,
                                         0,
                                         &Size,
                                         MEM_COMMIT,
                                         PAGE_READWRITE);
        FUNC7(Status, STATUS_SUCCESS);
        if (!FUNC0(Status))
        {
            break;
        }

        for (PageNumber = 0; PageNumber < 16; PageNumber++)
        {
            Page = Mem;
            Page += PageNumber * PAGE_SIZE;
            FUNC5(*Page == 0,
               "[%lu, %lu] Got non-zero memory. %x at %p\n",
               Iteration, PageNumber, *Page, Page);
            *Page = 123;
        }

        Status = FUNC4(FUNC2(),
                                        &Mem,
                                        &Size,
                                        PAGE_NOACCESS,
                                        &OldProtection);
        FUNC7(Status, STATUS_SUCCESS);
        FUNC6(OldProtection, PAGE_READWRITE);

        Size = 0;
        Status = FUNC3(FUNC2(),
                                     &Mem,
                                     &Size,
                                     MEM_RELEASE);
        FUNC7(Status, STATUS_SUCCESS);
    }
}