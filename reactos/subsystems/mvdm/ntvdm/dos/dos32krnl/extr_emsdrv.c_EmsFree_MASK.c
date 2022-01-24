#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_10__ {TYPE_1__ PageList; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  PEMS_PAGE ;
typedef  TYPE_2__* PEMS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AllocBitmap ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  EMS_PAGE ; 
 int /*<<< orphan*/  EMS_STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  EMS_STATUS_SUCCESS ; 
 scalar_t__ EMS_SYSTEM_HANDLE ; 
 int /*<<< orphan*/  EmsPageTable ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static UCHAR FUNC7(USHORT Handle)
{
    PLIST_ENTRY Entry;
    PEMS_HANDLE HandleEntry = FUNC3(Handle);

    if (!FUNC6(HandleEntry))
        return EMS_STATUS_INVALID_HANDLE;

    for (Entry = HandleEntry->PageList.Flink;
         Entry != &HandleEntry->PageList;
         Entry = Entry->Flink)
    {
        PEMS_PAGE PageEntry = (PEMS_PAGE)FUNC1(Entry, EMS_PAGE, Entry);
        ULONG PageNumber = FUNC0(PageEntry, EmsPageTable);

        /* Free the page */
        FUNC5(&AllocBitmap, PageNumber, 1);
    }

    FUNC4(&HandleEntry->PageList);

    if (Handle != EMS_SYSTEM_HANDLE)
        FUNC2(HandleEntry);

    return EMS_STATUS_SUCCESS;
}