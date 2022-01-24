#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_22__ {int Entries; } ;
struct TYPE_21__ {size_t Entries; TYPE_2__* Names; } ;
struct TYPE_19__ {int /*<<< orphan*/ * Buffer; scalar_t__ MaximumLength; scalar_t__ Length; } ;
struct TYPE_20__ {int MaxEntries; int DomainIndex; struct TYPE_20__* Domains; scalar_t__ Flags; TYPE_1__ Name; int /*<<< orphan*/  Use; scalar_t__ Entries; } ;
typedef  TYPE_2__* PLSAPR_TRANSLATED_NAME_EX ;
typedef  TYPE_3__* PLSAPR_TRANSLATED_NAMES_EX ;
typedef  TYPE_4__* PLSAPR_SID_ENUM_BUFFER ;
typedef  TYPE_2__* PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LSA_TRUST_INFORMATION ;
typedef  int /*<<< orphan*/  LSAP_LOOKUP_LEVEL ;
typedef  int /*<<< orphan*/  LSAPR_TRANSLATED_NAME_EX ;
typedef  int /*<<< orphan*/  LSAPR_REFERENCED_DOMAIN_LIST ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_2__*,TYPE_2__*,size_t*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_2__*,TYPE_2__*,size_t*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_2__*,TYPE_2__*,size_t*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_NONE_MAPPED ; 
 scalar_t__ STATUS_SOME_NOT_MAPPED ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SidTypeUnknown ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,size_t) ; 

NTSTATUS
FUNC7(PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,
               PLSAPR_REFERENCED_DOMAIN_LIST *ReferencedDomains,
               PLSAPR_TRANSLATED_NAMES_EX TranslatedNames,
               LSAP_LOOKUP_LEVEL LookupLevel,
               DWORD *MappedCount,
               DWORD LookupOptions,
               DWORD ClientRevision)
{
    PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer = NULL;
    PLSAPR_TRANSLATED_NAME_EX NamesBuffer = NULL;
    ULONG NamesBufferLength;
    ULONG i;
    ULONG Mapped = 0;
    NTSTATUS Status = STATUS_SUCCESS;

    NamesBufferLength = SidEnumBuffer->Entries * sizeof(LSAPR_TRANSLATED_NAME_EX);
    NamesBuffer = FUNC3(NamesBufferLength);
    if (NamesBuffer == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    DomainsBuffer = FUNC3(sizeof(LSAPR_REFERENCED_DOMAIN_LIST));
    if (DomainsBuffer == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    DomainsBuffer->Domains = FUNC3(SidEnumBuffer->Entries * sizeof(LSA_TRUST_INFORMATION));
    if (DomainsBuffer->Domains == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    DomainsBuffer->Entries = 0;
    DomainsBuffer->MaxEntries = SidEnumBuffer->Entries;

    /* Initialize all name entries */
    for (i = 0; i < SidEnumBuffer->Entries; i++)
    {
        NamesBuffer[i].Use = SidTypeUnknown;
        NamesBuffer[i].Name.Length = 0;
        NamesBuffer[i].Name.MaximumLength = 0;
        NamesBuffer[i].Name.Buffer = NULL;
        NamesBuffer[i].DomainIndex = -1;
        NamesBuffer[i].Flags = 0;
    }

    /* Look-up well-known SIDs */
    Status = FUNC2(SidEnumBuffer,
                                     NamesBuffer,
                                     DomainsBuffer,
                                     &Mapped);
    if (!FUNC5(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
        goto done;

    if (Mapped == SidEnumBuffer->Entries)
        goto done;

    /* Look-up builtin domain SIDs */
    Status = FUNC1(SidEnumBuffer,
                                         NamesBuffer,
                                         DomainsBuffer,
                                         &Mapped);
    if (!FUNC5(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
        goto done;

    if (Mapped == SidEnumBuffer->Entries)
        goto done;

    /* Look-up account domain SIDs */
    Status = FUNC0(SidEnumBuffer,
                                         NamesBuffer,
                                         DomainsBuffer,
                                         &Mapped);
    if (!FUNC5(Status) &&
        Status != STATUS_NONE_MAPPED &&
        Status != STATUS_SOME_NOT_MAPPED)
        goto done;

    if (Mapped == SidEnumBuffer->Entries)
        goto done;

done:
    FUNC6("done Status: %lx  Mapped: %lu\n", Status, Mapped);

    if (!FUNC5(Status))
    {
        if (DomainsBuffer != NULL)
        {
            if (DomainsBuffer->Domains != NULL)
                FUNC4(DomainsBuffer->Domains);

            FUNC4(DomainsBuffer);
        }

        if (NamesBuffer != NULL)
            FUNC4(NamesBuffer);
    }
    else
    {
        *ReferencedDomains = DomainsBuffer;
        TranslatedNames->Entries = SidEnumBuffer->Entries;
        TranslatedNames->Names = NamesBuffer;
        *MappedCount = Mapped;

        if (Mapped == 0)
            Status = STATUS_NONE_MAPPED;
        else if (Mapped < SidEnumBuffer->Entries)
            Status = STATUS_SOME_NOT_MAPPED;
    }

    return Status;
}