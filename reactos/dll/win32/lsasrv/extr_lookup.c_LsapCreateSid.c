
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WELL_KNOWN_SID ;
typedef int WCHAR ;
typedef size_t ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_11__ {int Length; int MaximumLength; TYPE_3__* Buffer; } ;
struct TYPE_10__ {int Length; int MaximumLength; TYPE_3__* Buffer; } ;
struct TYPE_12__ {struct TYPE_12__* Sid; int ListEntry; int Use; TYPE_2__ DomainName; TYPE_1__ AccountName; } ;
typedef int SID_NAME_USE ;
typedef int PWSTR ;
typedef TYPE_3__* PWELL_KNOWN_SID ;
typedef int * PULONG ;
typedef int PSID_IDENTIFIER_AUTHORITY ;
typedef TYPE_3__* PSID ;
typedef int BOOLEAN ;


 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 int InitializeListHead (int *) ;
 int InsertTailList (int *,int *) ;
 void* RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_3__*) ;
 int RtlGetProcessHeap () ;
 int RtlInitializeSid (TYPE_3__*,int ,scalar_t__) ;
 int RtlLengthRequiredSid (scalar_t__) ;
 int * RtlSubAuthoritySid (TYPE_3__*,size_t) ;
 int TRUE ;
 int WellKnownSidListHead ;
 int wcscpy (TYPE_3__*,int ) ;
 int wcslen (int ) ;

BOOLEAN
LsapCreateSid(PSID_IDENTIFIER_AUTHORITY IdentifierAuthority,
              UCHAR SubAuthorityCount,
              PULONG SubAuthorities,
              PWSTR AccountName,
              PWSTR DomainName,
              SID_NAME_USE Use,
              PSID *SidPtr)
{
    PWELL_KNOWN_SID SidEntry;
    PULONG p;
    ULONG i;

    SidEntry = RtlAllocateHeap(RtlGetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WELL_KNOWN_SID));
    if (SidEntry == ((void*)0))
        return FALSE;

    InitializeListHead(&SidEntry->ListEntry);

    SidEntry->Sid = RtlAllocateHeap(RtlGetProcessHeap(),
                                    0,
                                    RtlLengthRequiredSid(SubAuthorityCount));
    if (SidEntry->Sid == ((void*)0))
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, SidEntry);
        return FALSE;
    }

    RtlInitializeSid(SidEntry->Sid,
                     IdentifierAuthority,
                     SubAuthorityCount);

    for (i = 0; i < (ULONG)SubAuthorityCount; i++)
    {
        p = RtlSubAuthoritySid(SidEntry->Sid, i);
        *p = SubAuthorities[i];
    }



    SidEntry->AccountName.Length = wcslen(AccountName) * sizeof(WCHAR);
    SidEntry->AccountName.MaximumLength = SidEntry->AccountName.Length + sizeof(WCHAR);
    SidEntry->AccountName.Buffer = RtlAllocateHeap(RtlGetProcessHeap(), 0,
                                                   SidEntry->AccountName.MaximumLength);
    if (SidEntry->AccountName.Buffer == ((void*)0))
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, SidEntry->Sid);
        RtlFreeHeap(RtlGetProcessHeap(), 0, SidEntry);
        return FALSE;
    }

    wcscpy(SidEntry->AccountName.Buffer,
           AccountName);



    SidEntry->DomainName.Length = wcslen(DomainName) * sizeof(WCHAR);
    SidEntry->DomainName.MaximumLength = SidEntry->DomainName.Length + sizeof(WCHAR);
    SidEntry->DomainName.Buffer = RtlAllocateHeap(RtlGetProcessHeap(), 0,
                                                  SidEntry->DomainName.MaximumLength);
    if (SidEntry->DomainName.Buffer == ((void*)0))
    {
        RtlFreeHeap(RtlGetProcessHeap(), 0, SidEntry->AccountName.Buffer);
        RtlFreeHeap(RtlGetProcessHeap(), 0, SidEntry->Sid);
        RtlFreeHeap(RtlGetProcessHeap(), 0, SidEntry);
        return FALSE;
    }

    wcscpy(SidEntry->DomainName.Buffer,
           DomainName);

    SidEntry->Use = Use;

    InsertTailList(&WellKnownSidListHead,
                   &SidEntry->ListEntry);

    if (SidPtr != ((void*)0))
        *SidPtr = SidEntry->Sid;

    return TRUE;
}
