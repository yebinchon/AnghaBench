#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {int /*<<< orphan*/  DomainName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__* PWELL_KNOWN_SID ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_2__* PLIST_ENTRY ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WELL_KNOWN_SID ; 
 TYPE_2__ WellKnownSidListHead ; 

PWELL_KNOWN_SID
FUNC2(PUNICODE_STRING AccountName,
                                      PUNICODE_STRING DomainName)
{
    PLIST_ENTRY ListEntry;
    PWELL_KNOWN_SID Ptr;

    ListEntry = WellKnownSidListHead.Flink;
    while (ListEntry != &WellKnownSidListHead)
    {
        Ptr = FUNC0(ListEntry,
                                WELL_KNOWN_SID,
                                ListEntry);
        if (FUNC1(AccountName, &Ptr->AccountName, TRUE) &&
            FUNC1(DomainName, &Ptr->DomainName, TRUE))
        {
            return Ptr;
        }

        ListEntry = ListEntry->Flink;
    }

    return NULL;
}