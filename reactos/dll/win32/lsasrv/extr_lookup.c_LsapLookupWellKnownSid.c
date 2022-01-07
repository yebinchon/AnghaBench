
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* Flink; } ;
struct TYPE_8__ {int Sid; } ;
typedef TYPE_1__* PWELL_KNOWN_SID ;
typedef int PSID ;
typedef TYPE_2__* PLIST_ENTRY ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,TYPE_2__*) ;
 scalar_t__ RtlEqualSid (int ,int ) ;
 int WELL_KNOWN_SID ;
 TYPE_2__ WellKnownSidListHead ;

PWELL_KNOWN_SID
LsapLookupWellKnownSid(PSID Sid)
{
    PLIST_ENTRY ListEntry;
    PWELL_KNOWN_SID Ptr;

    ListEntry = WellKnownSidListHead.Flink;
    while (ListEntry != &WellKnownSidListHead)
    {
        Ptr = CONTAINING_RECORD(ListEntry,
                                WELL_KNOWN_SID,
                                ListEntry);
        if (RtlEqualSid(Sid, Ptr->Sid))
        {
            return Ptr;
        }

        ListEntry = ListEntry->Flink;
    }

    return ((void*)0);
}
