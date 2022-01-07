
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
typedef scalar_t__* PULONG ;
typedef int PMM_SECTION_SEGMENT ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef int NTSTATUS ;


 int CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DPRINT1 (char*,scalar_t__) ;
 int InsertTailList (TYPE_1__*,TYPE_1__*) ;
 int IsListEmpty (TYPE_1__*) ;
 int ListOfSegments ;
 int MM_SECTION_SEGMENT ;
 scalar_t__ MiCacheEvictPages (int ,scalar_t__) ;
 TYPE_1__ MiSegmentList ;
 int RemoveEntryList (TYPE_1__*) ;
 int STATUS_SUCCESS ;

NTSTATUS
MiRosTrimCache(ULONG Target,
               ULONG Priority,
               PULONG NrFreed)
{
    ULONG Freed;
    PLIST_ENTRY Entry;
    PMM_SECTION_SEGMENT Segment;
    *NrFreed = 0;

    DPRINT1("Need to trim %lu cache pages\n", Target);
    for (Entry = MiSegmentList.Flink;
         *NrFreed < Target && Entry != &MiSegmentList;
         Entry = Entry->Flink) {
        Segment = CONTAINING_RECORD(Entry, MM_SECTION_SEGMENT, ListOfSegments);

        Freed = MiCacheEvictPages(Segment, Target);
        *NrFreed += Freed;
    }
    DPRINT1("Evicted %lu cache pages\n", Target);

    if (!IsListEmpty(&MiSegmentList)) {
        Entry = MiSegmentList.Flink;
        RemoveEntryList(Entry);
        InsertTailList(&MiSegmentList, Entry);
    }

    return STATUS_SUCCESS;
}
