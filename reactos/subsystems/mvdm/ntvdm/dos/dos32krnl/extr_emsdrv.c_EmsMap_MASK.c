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
typedef  int USHORT ;
typedef  scalar_t__ ULONG_PTR ;
typedef  size_t UCHAR ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PEMS_PAGE ;
typedef  int /*<<< orphan*/  PEMS_HANDLE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EMS_PAGE_SIZE ; 
 size_t EMS_PHYSICAL_PAGES ; 
 size_t EMS_STATUS_INVALID_HANDLE ; 
 size_t EMS_STATUS_INV_LOGICAL_PAGE ; 
 size_t EMS_STATUS_INV_PHYSICAL_PAGE ; 
 size_t EMS_STATUS_SUCCESS ; 
 scalar_t__ EmsMemory ; 
 int /*<<< orphan*/  EmsPageTable ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** Mapping ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UCHAR FUNC4(USHORT Handle, UCHAR PhysicalPage, USHORT LogicalPage)
{
    PEMS_PAGE PageEntry;
    PEMS_HANDLE HandleEntry = FUNC1(Handle);

    if (!FUNC3(HandleEntry))
        return EMS_STATUS_INVALID_HANDLE;

    if (PhysicalPage >= EMS_PHYSICAL_PAGES)
        return EMS_STATUS_INV_PHYSICAL_PAGE;

    if (LogicalPage == 0xFFFF)
    {
        /* Unmap */
        Mapping[PhysicalPage] = NULL;
        return EMS_STATUS_SUCCESS;
    }

    PageEntry = FUNC2(HandleEntry, LogicalPage);
    if (!PageEntry) return EMS_STATUS_INV_LOGICAL_PAGE;

    Mapping[PhysicalPage] = (PVOID)((ULONG_PTR)EmsMemory
                            + FUNC0(PageEntry, EmsPageTable) * EMS_PAGE_SIZE);
    return EMS_STATUS_SUCCESS;
}