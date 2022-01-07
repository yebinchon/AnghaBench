
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef size_t ULONG ;
struct TYPE_11__ {scalar_t__ Use; int DomainIndex; scalar_t__ Flags; int * Sid; } ;
struct TYPE_10__ {scalar_t__ Length; } ;
struct TYPE_9__ {scalar_t__ Use; int * Sid; int AccountName; int DomainName; } ;
typedef TYPE_1__* PWELL_KNOWN_SID ;
typedef int * PUNICODE_STRING ;
typedef int * PULONG ;
typedef int * PSID ;
typedef TYPE_2__* PRPC_UNICODE_STRING ;
typedef TYPE_3__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef int PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef int NTSTATUS ;
typedef size_t DWORD ;


 int AccountDomainName ;
 int * AccountDomainSid ;
 int BuiltinDomainName ;
 int * BuiltinDomainSid ;
 int * CreateDomainSidFromAccountSid (int *) ;
 int LsapAddDomainToDomainsList (int ,int *,int *,size_t*) ;
 void* LsapCopySid (int *) ;
 TYPE_1__* LsapLookupIsolatedWellKnownName (int *) ;
 int MIDL_user_free (int *) ;
 int NT_SUCCESS (int ) ;
 int RTL_CONSTANT_STRING (char*) ;
 scalar_t__ RtlEqualUnicodeString (int *,int *,int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 scalar_t__ SidTypeDomain ;
 scalar_t__ SidTypeUnknown ;
 int TRACE (char*,TYPE_2__*) ;
 int TRUE ;

__attribute__((used)) static
NTSTATUS
LsapLookupIsolatedNames(DWORD Count,
                        PRPC_UNICODE_STRING DomainNames,
                        PRPC_UNICODE_STRING AccountNames,
                        PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                        PLSAPR_TRANSLATED_SID_EX2 SidsBuffer,
                        PULONG Mapped)
{
    UNICODE_STRING EmptyDomainName = RTL_CONSTANT_STRING(L"");
    PWELL_KNOWN_SID ptr, ptr2;
    PSID DomainSid;
    ULONG DomainIndex;
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    for (i = 0; i < Count; i++)
    {

        if (SidsBuffer[i].Use != SidTypeUnknown)
            continue;


        if (DomainNames[i].Length != 0)
            continue;

        TRACE("Mapping name: %wZ\n", &AccountNames[i]);


        ptr = LsapLookupIsolatedWellKnownName((PUNICODE_STRING)&AccountNames[i]);
        if (ptr != ((void*)0))
        {
            SidsBuffer[i].Use = ptr->Use;
            SidsBuffer[i].Sid = LsapCopySid(ptr->Sid);
            if (SidsBuffer[i].Sid == ((void*)0))
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            SidsBuffer[i].DomainIndex = -1;
            SidsBuffer[i].Flags = 0;

            if (ptr->Use == SidTypeDomain)
            {
                Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                    &ptr->AccountName,
                                                    ptr->Sid,
                                                    &DomainIndex);
                if (!NT_SUCCESS(Status))
                    goto done;

                SidsBuffer[i].DomainIndex = DomainIndex;
            }
            else
            {
                ptr2= LsapLookupIsolatedWellKnownName(&ptr->DomainName);
                if (ptr2 != ((void*)0))
                {
                    Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                        &ptr2->AccountName,
                                                        ptr2->Sid,
                                                        &DomainIndex);
                    if (!NT_SUCCESS(Status))
                        goto done;

                    SidsBuffer[i].DomainIndex = DomainIndex;
                }
                else
                {
                    DomainSid = CreateDomainSidFromAccountSid(ptr->Sid);
                    if (DomainSid == ((void*)0))
                    {
                        Status = STATUS_INSUFFICIENT_RESOURCES;
                        goto done;
                    }

                    Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                        &EmptyDomainName,
                                                        DomainSid,
                                                        &DomainIndex);

                    if (DomainSid != ((void*)0))
                    {
                        MIDL_user_free(DomainSid);
                        DomainSid = ((void*)0);
                    }

                    if (!NT_SUCCESS(Status))
                        goto done;

                    SidsBuffer[i].DomainIndex = DomainIndex;
                }
            }

            (*Mapped)++;
            continue;
        }


        if (RtlEqualUnicodeString((PUNICODE_STRING)&AccountNames[i], &BuiltinDomainName, TRUE))
        {
            SidsBuffer[i].Use = SidTypeDomain;
            SidsBuffer[i].Sid = LsapCopySid(BuiltinDomainSid);
            if (SidsBuffer[i].Sid == ((void*)0))
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            SidsBuffer[i].DomainIndex = -1;
            SidsBuffer[i].Flags = 0;

            Status = LsapAddDomainToDomainsList(DomainsBuffer,
                                                &BuiltinDomainName,
                                                BuiltinDomainSid,
                                                &DomainIndex);
            if (!NT_SUCCESS(Status))
                goto done;

            SidsBuffer[i].DomainIndex = DomainIndex;

            (*Mapped)++;
            continue;
        }


        if (RtlEqualUnicodeString((PUNICODE_STRING)&AccountNames[i], &AccountDomainName, TRUE))
        {
            SidsBuffer[i].Use = SidTypeDomain;
            SidsBuffer[i].Sid = LsapCopySid(AccountDomainSid);
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
            continue;
        }





    }

done:

    return Status;
}
