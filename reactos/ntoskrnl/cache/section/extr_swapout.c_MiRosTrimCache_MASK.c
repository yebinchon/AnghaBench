#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
typedef  scalar_t__* PULONG ;
typedef  int /*<<< orphan*/  PMM_SECTION_SEGMENT ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  ListOfSegments ; 
 int /*<<< orphan*/  MM_SECTION_SEGMENT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__ MiSegmentList ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC6(ULONG Target,
               ULONG Priority,
               PULONG NrFreed)
{
    ULONG Freed;
    PLIST_ENTRY Entry;
    PMM_SECTION_SEGMENT Segment;
    *NrFreed = 0;

    FUNC1("Need to trim %lu cache pages\n", Target);
    for (Entry = MiSegmentList.Flink;
         *NrFreed < Target && Entry != &MiSegmentList;
         Entry = Entry->Flink) {
        Segment = FUNC0(Entry, MM_SECTION_SEGMENT, ListOfSegments);
        /* Defer to MM to try recovering pages from it */
        Freed = FUNC4(Segment, Target);
        *NrFreed += Freed;
    }
    FUNC1("Evicted %lu cache pages\n", Target);

    if (!FUNC3(&MiSegmentList)) {
        Entry = MiSegmentList.Flink;
        FUNC5(Entry);
        FUNC2(&MiSegmentList, Entry);
    }

    return STATUS_SUCCESS;
}