
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {int DomainName; int AccountName; } ;
typedef TYPE_1__* PWELL_KNOWN_SID ;
typedef int PUNICODE_STRING ;
typedef TYPE_2__* PLIST_ENTRY ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,TYPE_2__*) ;
 scalar_t__ RtlEqualUnicodeString (int ,int *,int ) ;
 int TRUE ;
 int WELL_KNOWN_SID ;
 TYPE_2__ WellKnownSidListHead ;

PWELL_KNOWN_SID
LsapLookupFullyQualifiedWellKnownName(PUNICODE_STRING AccountName,
                                      PUNICODE_STRING DomainName)
{
    PLIST_ENTRY ListEntry;
    PWELL_KNOWN_SID Ptr;

    ListEntry = WellKnownSidListHead.Flink;
    while (ListEntry != &WellKnownSidListHead)
    {
        Ptr = CONTAINING_RECORD(ListEntry,
                                WELL_KNOWN_SID,
                                ListEntry);
        if (RtlEqualUnicodeString(AccountName, &Ptr->AccountName, TRUE) &&
            RtlEqualUnicodeString(DomainName, &Ptr->DomainName, TRUE))
        {
            return Ptr;
        }

        ListEntry = ListEntry->Flink;
    }

    return ((void*)0);
}
