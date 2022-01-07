
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG ;
struct TYPE_11__ {scalar_t__ FreeHits; scalar_t__ TotalFrees; scalar_t__ AllocateHits; scalar_t__ TotalAllocates; scalar_t__ FreeMisses; scalar_t__ AllocateMisses; int Size; int Tag; int Type; int MaximumDepth; int Depth; } ;
struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_9__ {scalar_t__ FreeMisses; scalar_t__ AllocateMisses; int Size; int Tag; int Type; scalar_t__ TotalFrees; scalar_t__ TotalAllocates; int MaximumDepth; int CurrentDepth; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PSYSTEM_LOOKASIDE_INFORMATION ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef TYPE_3__* PGENERAL_LOOKASIDE ;
typedef scalar_t__ BOOLEAN ;


 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,TYPE_2__*) ;
 int GENERAL_LOOKASIDE ;

__attribute__((used)) static
VOID
ExpCopyLookasideInformation(
    PSYSTEM_LOOKASIDE_INFORMATION *InfoPointer,
    PULONG RemainingPointer,
    PLIST_ENTRY ListHead,
    BOOLEAN ListUsesMisses)

{
    PSYSTEM_LOOKASIDE_INFORMATION Info;
    PGENERAL_LOOKASIDE LookasideList;
    PLIST_ENTRY ListEntry;
    ULONG Remaining;


    Info = *InfoPointer;
    Remaining = *RemainingPointer;


    for (ListEntry = ListHead->Flink;
         (ListEntry != ListHead) && (Remaining > 0);
         ListEntry = ListEntry->Flink, Remaining--)
    {
        LookasideList = CONTAINING_RECORD(ListEntry, GENERAL_LOOKASIDE, ListEntry);


        Info->CurrentDepth = LookasideList->Depth;
        Info->MaximumDepth = LookasideList->MaximumDepth;
        Info->TotalAllocates = LookasideList->TotalAllocates;
        Info->TotalFrees = LookasideList->TotalFrees;
        Info->Type = LookasideList->Type;
        Info->Tag = LookasideList->Tag;
        Info->Size = LookasideList->Size;


        if (ListUsesMisses)
        {

            Info->AllocateMisses = LookasideList->AllocateMisses;
            Info->FreeMisses = LookasideList->FreeMisses;
        }
        else
        {

            Info->AllocateMisses = LookasideList->TotalAllocates
                                   - LookasideList->AllocateHits;
            Info->FreeMisses = LookasideList->TotalFrees
                               - LookasideList->FreeHits;
        }
    }


    *InfoPointer = Info;
    *RemainingPointer = Remaining;
}
