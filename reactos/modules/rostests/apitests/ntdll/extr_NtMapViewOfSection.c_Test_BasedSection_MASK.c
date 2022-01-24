#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_4__ {int QuadPart; } ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  SECTION_ALL_ACCESS ; 
 int SEC_BASED ; 
 int SEC_COMMIT ; 
 int /*<<< orphan*/  STATUS_CONFLICTING_ADDRESSES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  ViewShare ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
    NTSTATUS Status;
    HANDLE SectionHandle1, SectionHandle2;
    LARGE_INTEGER MaximumSize, SectionOffset;
    PVOID BaseAddress1, BaseAddress2;
    SIZE_T ViewSize;

    /* Create a based section with SEC_COMMIT */
    MaximumSize.QuadPart = 0x1000;
    Status = FUNC0(&SectionHandle1,
                             SECTION_ALL_ACCESS,
                             NULL,
                             &MaximumSize,
                             PAGE_READWRITE,
                             SEC_COMMIT | SEC_BASED,
                             NULL);
    FUNC4(Status, STATUS_SUCCESS);

    /* Map the 1st section */
    BaseAddress1 = NULL;
    SectionOffset.QuadPart = 0;
    ViewSize = 0;
    Status = FUNC2(SectionHandle1,
                                FUNC1(),
                                &BaseAddress1,
                                0,
                                0,
                                &SectionOffset,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);
#if 0 // WOW64?
    ok_ntstatus(Status, STATUS_CONFLICTING_ADDRESSES);
#else
    FUNC4(Status, STATUS_SUCCESS);
#endif

    /* Create a 2nd based section with SEC_COMMIT */
    MaximumSize.QuadPart = 0x1000;
    Status = FUNC0(&SectionHandle2,
                             SECTION_ALL_ACCESS,
                             NULL,
                             &MaximumSize,
                             PAGE_READWRITE,
                             SEC_COMMIT | SEC_BASED,
                             NULL);
    FUNC4(Status, STATUS_SUCCESS);//

    /* Map the 2nd section */
    BaseAddress2 = NULL;
    SectionOffset.QuadPart = 0;
    ViewSize = 0;
    Status = FUNC2(SectionHandle2,
                                FUNC1(),
                                &BaseAddress2,
                                0,
                                0,
                                &SectionOffset,
                                &ViewSize,
                                ViewShare,
                                0,
                                PAGE_READWRITE);
#if 0 // WOW64?
    ok_ntstatus(Status, STATUS_CONFLICTING_ADDRESSES);
#else
    FUNC4(Status, STATUS_SUCCESS);
    FUNC3((ULONG_PTR)BaseAddress2 < (ULONG_PTR)BaseAddress1,
       "Invalid addresses: BaseAddress1=%p, BaseAddress2=%p\n", BaseAddress1, BaseAddress2);
    FUNC3(((ULONG_PTR)BaseAddress1 - (ULONG_PTR)BaseAddress2) == 0x10000,
       "Invalid addresses: BaseAddress1=%p, BaseAddress2=%p\n", BaseAddress1, BaseAddress2);
#endif
}