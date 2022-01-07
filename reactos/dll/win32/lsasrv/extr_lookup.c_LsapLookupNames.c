
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_37__ {int Entries; TYPE_1__* Sids; } ;
struct TYPE_36__ {int MaxEntries; int DomainIndex; struct TYPE_36__* Domains; struct TYPE_36__* Buffer; scalar_t__ Flags; int * Sid; int Use; scalar_t__ Entries; } ;
typedef TYPE_1__* PRPC_UNICODE_STRING ;
typedef TYPE_1__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef TYPE_3__* PLSAPR_TRANSLATED_SIDS_EX2 ;
typedef TYPE_1__* PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef scalar_t__ NTSTATUS ;
typedef int LSA_TRUST_INFORMATION ;
typedef int LSAP_LOOKUP_LEVEL ;
typedef int LSAPR_TRANSLATED_SID_EX2 ;
typedef int LSAPR_REFERENCED_DOMAIN_LIST ;
typedef int DWORD ;


 scalar_t__ LsapLookupAccountNames (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*) ;
 scalar_t__ LsapLookupBuiltinNames (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*) ;
 scalar_t__ LsapLookupFullyQualifiedWellKnownNames (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*) ;
 scalar_t__ LsapLookupIsolatedAccountNames (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*) ;
 scalar_t__ LsapLookupIsolatedBuiltinNames (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*) ;
 scalar_t__ LsapLookupIsolatedNames (int,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int*) ;
 scalar_t__ LsapSplitNames (int,TYPE_1__*,TYPE_1__**,TYPE_1__**) ;
 void* MIDL_user_allocate (int) ;
 int MIDL_user_free (TYPE_1__*) ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_NONE_MAPPED ;
 scalar_t__ STATUS_SOME_NOT_MAPPED ;
 scalar_t__ STATUS_SUCCESS ;
 int SidTypeUnknown ;
 int TRACE (char*,scalar_t__) ;

NTSTATUS
LsapLookupNames(DWORD Count,
                PRPC_UNICODE_STRING Names,
                PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,
                PLSAPR_TRANSLATED_SIDS_EX2 TranslatedSids,
                LSAP_LOOKUP_LEVEL LookupLevel,
                DWORD *MappedCount,
                DWORD LookupOptions,
                DWORD ClientRevision)
{
    PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer = ((void*)0);
    PLSAPR_TRANSLATED_SID_EX2 SidsBuffer = ((void*)0);
    PRPC_UNICODE_STRING DomainNames = ((void*)0);
    PRPC_UNICODE_STRING AccountNames = ((void*)0);
    ULONG SidsBufferLength;
    ULONG i;
    ULONG Mapped = 0;
    NTSTATUS Status = STATUS_SUCCESS;



    TranslatedSids->Entries = 0;
    TranslatedSids->Sids = ((void*)0);
    *ReferencedDomains = ((void*)0);

    SidsBufferLength = Count * sizeof(LSAPR_TRANSLATED_SID_EX2);
    SidsBuffer = MIDL_user_allocate(SidsBufferLength);
    if (SidsBuffer == ((void*)0))
    {

        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    DomainsBuffer = MIDL_user_allocate(sizeof(LSAPR_REFERENCED_DOMAIN_LIST));
    if (DomainsBuffer == ((void*)0))
    {

        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    DomainsBuffer->Domains = MIDL_user_allocate(Count * sizeof(LSA_TRUST_INFORMATION));
    if (DomainsBuffer->Domains == ((void*)0))
    {

        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }
    DomainsBuffer->Entries = 0;
    DomainsBuffer->MaxEntries = Count;

    for (i = 0; i < Count; i++)
    {
        SidsBuffer[i].Use = SidTypeUnknown;
        SidsBuffer[i].Sid = ((void*)0);
        SidsBuffer[i].DomainIndex = -1;
        SidsBuffer[i].Flags = 0;
    }

    Status = LsapSplitNames(Count,
                            Names,
                            &DomainNames,
                            &AccountNames);
    if (!NT_SUCCESS(Status))
    {
        TRACE("LsapSplitNames failed! (Status %lx)\n", Status);
        goto done;
    }


    Status = LsapLookupIsolatedNames(Count,
                                     DomainNames,
                                     AccountNames,
                                     DomainsBuffer,
                                     SidsBuffer,
                                     &Mapped);
    if (!NT_SUCCESS(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
    {
        TRACE("LsapLookupIsolatedNames failed! (Status %lx)\n", Status);
        goto done;
    }

    if (Mapped == Count)
        goto done;


    Status = LsapLookupIsolatedBuiltinNames(Count,
                                            DomainNames,
                                            AccountNames,
                                            DomainsBuffer,
                                            SidsBuffer,
                                            &Mapped);
    if (!NT_SUCCESS(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
    {
        TRACE("LsapLookupIsolatedBuiltinNames failed! (Status %lx)\n", Status);
        goto done;
    }

    if (Mapped == Count)
        goto done;


    Status = LsapLookupIsolatedAccountNames(Count,
                                            DomainNames,
                                            AccountNames,
                                            DomainsBuffer,
                                            SidsBuffer,
                                            &Mapped);
    if (!NT_SUCCESS(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
    {
        TRACE("LsapLookupIsolatedAccountNames failed! (Status %lx)\n", Status);
        goto done;
    }

    if (Mapped == Count)
        goto done;

    Status = LsapLookupFullyQualifiedWellKnownNames(Count,
                                                    DomainNames,
                                                    AccountNames,
                                                    DomainsBuffer,
                                                    SidsBuffer,
                                                    &Mapped);
    if (!NT_SUCCESS(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
    {
        TRACE("LsapLookupFullyQualifiedWellKnownNames failed! (Status %lx)\n", Status);
        goto done;
    }

    if (Mapped == Count)
        goto done;

    Status = LsapLookupBuiltinNames(Count,
                                    DomainNames,
                                    AccountNames,
                                    DomainsBuffer,
                                    SidsBuffer,
                                    &Mapped);
    if (!NT_SUCCESS(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
    {
        TRACE("LsapLookupBuiltinNames failed! (Status %lx)\n", Status);
        goto done;
    }

    if (Mapped == Count)
        goto done;


    Status = LsapLookupAccountNames(Count,
                                    DomainNames,
                                    AccountNames,
                                    DomainsBuffer,
                                    SidsBuffer,
                                    &Mapped);
    if (!NT_SUCCESS(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
    {
        TRACE("LsapLookupAccountNames failed! (Status %lx)\n", Status);
        goto done;
    }

    if (Mapped == Count)
        goto done;

done:


    if (DomainNames != ((void*)0))
    {

        for (i = 0; i < Count; i++)
        {
            if (DomainNames[i].Buffer != ((void*)0))
                MIDL_user_free(DomainNames[i].Buffer);
        }

        MIDL_user_free(DomainNames);
    }

    if (AccountNames != ((void*)0))
    {

        for (i = 0; i < Count; i++)
        {

            if (AccountNames[i].Buffer != ((void*)0))
            {
                MIDL_user_free(AccountNames[i].Buffer);
            }
        }

        MIDL_user_free(AccountNames);
    }

    if (!NT_SUCCESS(Status))
    {



        if (DomainsBuffer != ((void*)0))
        {
            if (DomainsBuffer->Domains != ((void*)0))
                MIDL_user_free(DomainsBuffer->Domains);

            MIDL_user_free(DomainsBuffer);
        }


        if (SidsBuffer != ((void*)0))
            MIDL_user_free(SidsBuffer);
    }
    else
    {


        *ReferencedDomains = DomainsBuffer;
        TranslatedSids->Entries = Count;
        TranslatedSids->Sids = SidsBuffer;
        *MappedCount = Mapped;

        if (Mapped == 0)
            Status = STATUS_NONE_MAPPED;
        else if (Mapped < Count)
            Status = STATUS_SOME_NOT_MAPPED;
    }



    return Status;
}
