
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_23__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_34__ {int * Buffer; int MaximumLength; int Length; } ;
struct TYPE_33__ {size_t Entries; TYPE_1__* SidInfo; } ;
struct TYPE_32__ {scalar_t__ Use; size_t DomainIndex; TYPE_7__ Name; scalar_t__ Flags; } ;
struct TYPE_31__ {TYPE_2__* Element; int * member_1; int member_0; } ;
struct TYPE_30__ {scalar_t__* Element; int * member_1; int member_0; } ;
struct TYPE_29__ {int MaximumLength; int Buffer; int Length; } ;
struct TYPE_28__ {int MaximumLength; int Buffer; int Length; } ;
struct TYPE_27__ {int Sid; } ;
typedef TYPE_3__ SAMPR_ULONG_ARRAY ;
typedef TYPE_4__ SAMPR_RETURNED_USTRING_ARRAY ;
typedef int * SAMPR_HANDLE ;
typedef int * PULONG ;
typedef TYPE_5__* PLSAPR_TRANSLATED_NAME_EX ;
typedef TYPE_6__* PLSAPR_SID_ENUM_BUFFER ;
typedef int PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef TYPE_7__* NTSTATUS ;
typedef TYPE_7__* LPWSTR ;


 TYPE_23__ AccountDomainName ;
 int AccountDomainSid ;
 int ConvertSidToStringSidW (int ,TYPE_7__**) ;
 int DOMAIN_LOOKUP ;
 int LocalFree (TYPE_7__*) ;
 TYPE_7__* LsapAddDomainToDomainsList (int ,TYPE_23__*,int ,size_t*) ;
 size_t LsapGetRelativeIdFromSid (int ) ;
 scalar_t__ LsapIsPrefixSid (int ,int ) ;
 void* MIDL_user_allocate (int ) ;
 scalar_t__ NT_SUCCESS (TYPE_7__*) ;
 int RtlCopyMemory (int *,int ,int ) ;
 scalar_t__ RtlEqualSid (int ,int ) ;
 int SAM_SERVER_CONNECT ;
 int SAM_SERVER_LOOKUP_DOMAIN ;
 TYPE_7__* STATUS_INSUFFICIENT_RESOURCES ;
 TYPE_7__* STATUS_SUCCESS ;
 int SamIFree_SAMPR_RETURNED_USTRING_ARRAY (TYPE_4__*) ;
 int SamIFree_SAMPR_ULONG_ARRAY (TYPE_3__*) ;
 int SamrCloseHandle (int **) ;
 TYPE_7__* SamrConnect (int *,int **,int) ;
 TYPE_7__* SamrLookupIdsInDomain (int *,int,size_t*,TYPE_4__*,TYPE_3__*) ;
 TYPE_7__* SamrOpenDomain (int *,int ,int ,int **) ;
 scalar_t__ SidTypeDomain ;
 scalar_t__ SidTypeUnknown ;
 int TRACE (char*,...) ;

__attribute__((used)) static NTSTATUS
LsapLookupAccountDomainSids(PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,
                            PLSAPR_TRANSLATED_NAME_EX NamesBuffer,
                            PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                            PULONG Mapped)
{
    SAMPR_HANDLE ServerHandle = ((void*)0);
    SAMPR_HANDLE DomainHandle = ((void*)0);
    SAMPR_RETURNED_USTRING_ARRAY Names = {0, ((void*)0)};
    SAMPR_ULONG_ARRAY Use = {0, ((void*)0)};
    LPWSTR SidString = ((void*)0);
    ULONG DomainIndex;
    ULONG RelativeIds[1];
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

    for (i = 0; i < SidEnumBuffer->Entries; i++)
    {

        if (NamesBuffer[i].Use != SidTypeUnknown)
            continue;

        ConvertSidToStringSidW(SidEnumBuffer->SidInfo[i].Sid, &SidString);
        TRACE("Mapping SID: %S\n", SidString);
        LocalFree(SidString);
        SidString = ((void*)0);

        if (RtlEqualSid(AccountDomainSid, SidEnumBuffer->SidInfo[i].Sid))
        {
            TRACE("Found account domain!\n");

            NamesBuffer[i].Use = SidTypeDomain;
            NamesBuffer[i].Flags = 0;

            NamesBuffer[i].Name.Length = AccountDomainName.Length;
            NamesBuffer[i].Name.MaximumLength = AccountDomainName.MaximumLength;
            NamesBuffer[i].Name.Buffer = MIDL_user_allocate(AccountDomainName.MaximumLength);
            if (NamesBuffer[i].Name.Buffer == ((void*)0))
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            RtlCopyMemory(NamesBuffer[i].Name.Buffer, AccountDomainName.Buffer, AccountDomainName.MaximumLength);

            Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                &AccountDomainName,
                                                AccountDomainSid,
                                                &DomainIndex);
            if (!NT_SUCCESS(Status))
                goto done;

            NamesBuffer[i].DomainIndex = DomainIndex;

            TRACE("Mapped to: %wZ\n", &NamesBuffer[i].Name);

            (*Mapped)++;
        }
        else if (LsapIsPrefixSid(AccountDomainSid, SidEnumBuffer->SidInfo[i].Sid))
        {
            TRACE("Found account domain account!\n");

            RelativeIds[0] = LsapGetRelativeIdFromSid(SidEnumBuffer->SidInfo[i].Sid);

            Status = SamrLookupIdsInDomain(DomainHandle,
                                           1,
                                           RelativeIds,
                                           &Names,
                                           &Use);
            if (NT_SUCCESS(Status))
            {
                NamesBuffer[i].Use = Use.Element[0];
                NamesBuffer[i].Flags = 0;

                NamesBuffer[i].Name.Length = Names.Element[0].Length;
                NamesBuffer[i].Name.MaximumLength = Names.Element[0].MaximumLength;
                NamesBuffer[i].Name.Buffer = MIDL_user_allocate(Names.Element[0].MaximumLength);
                if (NamesBuffer[i].Name.Buffer == ((void*)0))
                {
                    SamIFree_SAMPR_RETURNED_USTRING_ARRAY(&Names);
                    SamIFree_SAMPR_ULONG_ARRAY(&Use);

                    Status = STATUS_INSUFFICIENT_RESOURCES;
                    goto done;
                }

                RtlCopyMemory(NamesBuffer[i].Name.Buffer,
                              Names.Element[0].Buffer,
                              Names.Element[0].MaximumLength);

                SamIFree_SAMPR_RETURNED_USTRING_ARRAY(&Names);
                SamIFree_SAMPR_ULONG_ARRAY(&Use);

                Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                    &AccountDomainName,
                                                    AccountDomainSid,
                                                    &DomainIndex);
                if (!NT_SUCCESS(Status))
                    goto done;

                NamesBuffer[i].DomainIndex = DomainIndex;

                TRACE("Mapped to: %wZ\n", &NamesBuffer[i].Name);

                (*Mapped)++;
            }
        }
    }

done:
    if (DomainHandle != ((void*)0))
        SamrCloseHandle(&DomainHandle);

    if (ServerHandle != ((void*)0))
        SamrCloseHandle(&ServerHandle);

    return Status;
}
