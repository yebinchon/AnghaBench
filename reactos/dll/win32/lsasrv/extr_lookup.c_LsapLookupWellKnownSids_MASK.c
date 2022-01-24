#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_19__ {int /*<<< orphan*/ * Buffer; int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Length; } ;
struct TYPE_18__ {size_t Entries; TYPE_1__* SidInfo; } ;
struct TYPE_17__ {scalar_t__ Use; size_t DomainIndex; TYPE_5__ Name; scalar_t__ Flags; } ;
struct TYPE_14__ {int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  Buffer; int /*<<< orphan*/  Length; } ;
struct TYPE_16__ {scalar_t__ Use; int /*<<< orphan*/  Sid; TYPE_11__ AccountName; int /*<<< orphan*/  DomainName; } ;
struct TYPE_15__ {int /*<<< orphan*/  Sid; } ;
typedef  TYPE_2__* PWELL_KNOWN_SID ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_3__* PLSAPR_TRANSLATED_NAME_EX ;
typedef  TYPE_4__* PLSAPR_SID_ENUM_BUFFER ;
typedef  int /*<<< orphan*/  PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_5__* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ SidTypeUnknown ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_5__*) ; 

__attribute__((used)) static NTSTATUS
FUNC9(PLSAPR_SID_ENUM_BUFFER SidEnumBuffer,
                        PLSAPR_TRANSLATED_NAME_EX NamesBuffer,
                        PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                        PULONG Mapped)
{
    PWELL_KNOWN_SID ptr, ptr2;
    LPWSTR SidString = NULL;
    ULONG DomainIndex;
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    for (i = 0; i < SidEnumBuffer->Entries; i++)
    {
        /* Ignore SIDs which are already mapped */
        if (NamesBuffer[i].Use != SidTypeUnknown)
            continue;

        FUNC0(SidEnumBuffer->SidInfo[i].Sid, &SidString);
        FUNC8("Mapping SID: %S\n", SidString);
        FUNC1(SidString);
        SidString = NULL;

        ptr = FUNC4(SidEnumBuffer->SidInfo[i].Sid);
        if (ptr != NULL)
        {
            NamesBuffer[i].Use = ptr->Use;
            NamesBuffer[i].Flags = 0;

            NamesBuffer[i].Name.Length = ptr->AccountName.Length;
            NamesBuffer[i].Name.MaximumLength = ptr->AccountName.MaximumLength;
            NamesBuffer[i].Name.Buffer = FUNC5(ptr->AccountName.MaximumLength);
            if (NamesBuffer[i].Name.Buffer == NULL)
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            FUNC7(NamesBuffer[i].Name.Buffer, ptr->AccountName.Buffer, ptr->AccountName.MaximumLength);

            ptr2= FUNC3(&ptr->DomainName);
            if (ptr2 != NULL)
            {
                Status = FUNC2(DomainsBuffer,
                                                    &ptr2->AccountName,
                                                    ptr2->Sid,
                                                    &DomainIndex);
                if (!FUNC6(Status))
                    goto done;

                NamesBuffer[i].DomainIndex = DomainIndex;
            }

            FUNC8("Mapped to: %wZ\n", &NamesBuffer[i].Name);

            (*Mapped)++;
        }
    }

done:
    return Status;
}