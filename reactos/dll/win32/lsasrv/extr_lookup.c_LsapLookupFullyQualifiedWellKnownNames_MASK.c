#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  size_t ULONG ;
struct TYPE_17__ {scalar_t__ Use; int DomainIndex; scalar_t__ Flags; int /*<<< orphan*/ * Sid; } ;
struct TYPE_16__ {scalar_t__ Use; int /*<<< orphan*/ * Sid; TYPE_1__ AccountName; TYPE_1__ DomainName; } ;
typedef  TYPE_2__* PWELL_KNOWN_SID ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  TYPE_1__* PRPC_UNICODE_STRING ;
typedef  TYPE_4__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef  int /*<<< orphan*/  PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (char*) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ SidTypeDomain ; 
 scalar_t__ SidTypeUnknown ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static
NTSTATUS
FUNC9(DWORD Count,
                                       PRPC_UNICODE_STRING DomainNames,
                                       PRPC_UNICODE_STRING AccountNames,
                                       PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                                       PLSAPR_TRANSLATED_SID_EX2 SidsBuffer,
                                       PULONG Mapped)
{
    UNICODE_STRING EmptyDomainName = FUNC7(L"");
    PWELL_KNOWN_SID ptr, ptr2;
    PSID DomainSid;
    ULONG DomainIndex;
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    for (i = 0; i < Count; i++)
    {
        /* Ignore names which were already mapped */
        if (SidsBuffer[i].Use != SidTypeUnknown)
            continue;

        /* Ignore isolated account names */
        if (DomainNames[i].Length == 0)
            continue;

        FUNC8("Mapping name: %wZ\\%wZ\n", &DomainNames[i], &AccountNames[i]);

        /* Look-up all well-known names */
        ptr = FUNC3((PUNICODE_STRING)&AccountNames[i],
                                                    (PUNICODE_STRING)&DomainNames[i]);
        if (ptr != NULL)
        {
            FUNC8("Found it! (%wZ\\%wZ)\n", &ptr->DomainName, &ptr->AccountName);

            SidsBuffer[i].Use = ptr->Use;
            SidsBuffer[i].Sid = FUNC2(ptr->Sid);
            if (SidsBuffer[i].Sid == NULL)
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            SidsBuffer[i].DomainIndex = -1;
            SidsBuffer[i].Flags = 0;

            if (ptr->Use == SidTypeDomain)
            {
                Status = FUNC1(DomainsBuffer,
                                                    &ptr->AccountName,
                                                    ptr->Sid,
                                                    &DomainIndex);
                if (!FUNC6(Status))
                    goto done;

                SidsBuffer[i].DomainIndex = DomainIndex;
            }
            else
            {
                ptr2= FUNC4(&ptr->DomainName);
                if (ptr2 != NULL)
                {
                    Status = FUNC1(DomainsBuffer,
                                                        &ptr2->AccountName,
                                                        ptr2->Sid,
                                                        &DomainIndex);
                    if (!FUNC6(Status))
                        goto done;

                    SidsBuffer[i].DomainIndex = DomainIndex;
                }
                else
                {
                    DomainSid = FUNC0(ptr->Sid);
                    if (DomainSid == NULL)
                    {
                        Status = STATUS_INSUFFICIENT_RESOURCES;
                        goto done;
                    }

                    Status = FUNC1(DomainsBuffer,
                                                        &EmptyDomainName,
                                                        DomainSid,
                                                        &DomainIndex);

                    if (DomainSid != NULL)
                    {
                        FUNC5(DomainSid);
                        DomainSid = NULL;
                    }

                    if (!FUNC6(Status))
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