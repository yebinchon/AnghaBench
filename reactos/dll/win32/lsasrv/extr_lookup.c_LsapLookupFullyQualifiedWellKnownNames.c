
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef size_t ULONG ;
struct TYPE_17__ {scalar_t__ Use; int DomainIndex; scalar_t__ Flags; int * Sid; } ;
struct TYPE_16__ {scalar_t__ Use; int * Sid; TYPE_1__ AccountName; TYPE_1__ DomainName; } ;
typedef TYPE_2__* PWELL_KNOWN_SID ;
typedef int PUNICODE_STRING ;
typedef int * PULONG ;
typedef int * PSID ;
typedef TYPE_1__* PRPC_UNICODE_STRING ;
typedef TYPE_4__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef int PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef int NTSTATUS ;
typedef size_t DWORD ;


 int * CreateDomainSidFromAccountSid (int *) ;
 int LsapAddDomainToDomainsList (int ,TYPE_1__*,int *,size_t*) ;
 int * LsapCopySid (int *) ;
 TYPE_2__* LsapLookupFullyQualifiedWellKnownName (int ,int ) ;
 TYPE_2__* LsapLookupIsolatedWellKnownName (TYPE_1__*) ;
 int MIDL_user_free (int *) ;
 int NT_SUCCESS (int ) ;
 TYPE_1__ RTL_CONSTANT_STRING (char*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 scalar_t__ SidTypeDomain ;
 scalar_t__ SidTypeUnknown ;
 int TRACE (char*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static
NTSTATUS
LsapLookupFullyQualifiedWellKnownNames(DWORD Count,
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


        if (DomainNames[i].Length == 0)
            continue;

        TRACE("Mapping name: %wZ\\%wZ\n", &DomainNames[i], &AccountNames[i]);


        ptr = LsapLookupFullyQualifiedWellKnownName((PUNICODE_STRING)&AccountNames[i],
                                                    (PUNICODE_STRING)&DomainNames[i]);
        if (ptr != ((void*)0))
        {
            TRACE("Found it! (%wZ\\%wZ)\n", &ptr->DomainName, &ptr->AccountName);

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
    }

done:
    return Status;
}
