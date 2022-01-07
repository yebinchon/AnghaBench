
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_14__ {scalar_t__ Use; int DomainIndex; scalar_t__ Flags; int * Sid; } ;
struct TYPE_13__ {scalar_t__ Length; } ;
struct TYPE_12__ {scalar_t__* Element; int * member_1; int member_0; } ;
typedef TYPE_1__ SAMPR_ULONG_ARRAY ;
typedef int * SAMPR_HANDLE ;
typedef int PUNICODE_STRING ;
typedef int * PULONG ;
typedef TYPE_2__* PRPC_UNICODE_STRING ;
typedef TYPE_3__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef int PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef int NTSTATUS ;
typedef size_t DWORD ;


 int AccountDomainName ;
 int AccountDomainSid ;
 int * CreateSidFromSidAndRid (int ,scalar_t__) ;
 int DOMAIN_LOOKUP ;
 int LsapAddDomainToDomainsList (int ,int *,int ,size_t*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int RtlEqualUnicodeString (int ,int *,int ) ;
 int SAM_SERVER_CONNECT ;
 int SAM_SERVER_LOOKUP_DOMAIN ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SamIFree_SAMPR_ULONG_ARRAY (TYPE_1__*) ;
 int SamrCloseHandle (int **) ;
 int SamrConnect (int *,int **,int) ;
 int SamrLookupNamesInDomain (int *,int,TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int SamrOpenDomain (int *,int ,int ,int **) ;
 scalar_t__ SidTypeUnknown ;
 int TRACE (char*,TYPE_2__*,...) ;
 int TRUE ;

__attribute__((used)) static
NTSTATUS
LsapLookupAccountNames(DWORD Count,
                       PRPC_UNICODE_STRING DomainNames,
                       PRPC_UNICODE_STRING AccountNames,
                       PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                       PLSAPR_TRANSLATED_SID_EX2 SidsBuffer,
                       PULONG Mapped)
{
    SAMPR_HANDLE ServerHandle = ((void*)0);
    SAMPR_HANDLE DomainHandle = ((void*)0);
    SAMPR_ULONG_ARRAY RelativeIds = {0, ((void*)0)};
    SAMPR_ULONG_ARRAY Use = {0, ((void*)0)};
    ULONG DomainIndex;
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    Status = SamrConnect(((void*)0),
                         &ServerHandle,
                         SAM_SERVER_CONNECT | SAM_SERVER_LOOKUP_DOMAIN);
    if (!NT_SUCCESS(Status))
    {
        TRACE("SamrConnect failed (Status %08lx)\n", Status);
        goto done;
    }

    Status = SamrOpenDomain(ServerHandle,
                            DOMAIN_LOOKUP,
                            AccountDomainSid,
                            &DomainHandle);
    if (!NT_SUCCESS(Status))
    {
        TRACE("SamOpenDomain failed (Status %08lx)\n", Status);
        goto done;
    }

    for (i = 0; i < Count; i++)
    {

        if (SidsBuffer[i].Use != SidTypeUnknown)
            continue;


        if (DomainNames[i].Length == 0)
            continue;

        if (!RtlEqualUnicodeString((PUNICODE_STRING)&DomainNames[i], &AccountDomainName, TRUE))
            continue;

        TRACE("Mapping name: %wZ\\%wZ\n", &DomainNames[i], &AccountNames[i]);

        Status = SamrLookupNamesInDomain(DomainHandle,
                                         1,
                                         &AccountNames[i],
                                         &RelativeIds,
                                         &Use);
        if (NT_SUCCESS(Status))
        {
            SidsBuffer[i].Use = Use.Element[0];
            SidsBuffer[i].Sid = CreateSidFromSidAndRid(AccountDomainSid,
                                                       RelativeIds.Element[0]);
            if (SidsBuffer[i].Sid == ((void*)0))
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            SidsBuffer[i].DomainIndex = -1;
            SidsBuffer[i].Flags = 0;

            Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                &AccountDomainName,
                                                AccountDomainSid,
                                                &DomainIndex);
            if (!NT_SUCCESS(Status))
                goto done;

            SidsBuffer[i].DomainIndex = DomainIndex;

            (*Mapped)++;
        }

        SamIFree_SAMPR_ULONG_ARRAY(&RelativeIds);
        SamIFree_SAMPR_ULONG_ARRAY(&Use);
    }

done:
    if (DomainHandle != ((void*)0))
        SamrCloseHandle(&DomainHandle);

    if (ServerHandle != ((void*)0))
        SamrCloseHandle(&ServerHandle);

    return Status;
}
