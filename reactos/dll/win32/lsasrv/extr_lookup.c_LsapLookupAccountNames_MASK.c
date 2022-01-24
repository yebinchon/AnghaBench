#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_14__ {scalar_t__ Use; int DomainIndex; scalar_t__ Flags; int /*<<< orphan*/ * Sid; } ;
struct TYPE_13__ {scalar_t__ Length; } ;
struct TYPE_12__ {scalar_t__* Element; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SAMPR_ULONG_ARRAY ;
typedef  int /*<<< orphan*/ * SAMPR_HANDLE ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_2__* PRPC_UNICODE_STRING ;
typedef  TYPE_3__* PLSAPR_TRANSLATED_SID_EX2 ;
typedef  int /*<<< orphan*/  PLSAPR_REFERENCED_DOMAIN_LIST ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AccountDomainName ; 
 int /*<<< orphan*/  AccountDomainSid ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  DOMAIN_LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SAM_SERVER_CONNECT ; 
 int SAM_SERVER_LOOKUP_DOMAIN ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ SidTypeUnknown ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
NTSTATUS
FUNC10(DWORD Count,
                       PRPC_UNICODE_STRING DomainNames,
                       PRPC_UNICODE_STRING AccountNames,
                       PLSAPR_REFERENCED_DOMAIN_LIST DomainsBuffer,
                       PLSAPR_TRANSLATED_SID_EX2 SidsBuffer,
                       PULONG Mapped)
{
    SAMPR_HANDLE ServerHandle = NULL;
    SAMPR_HANDLE DomainHandle = NULL;
    SAMPR_ULONG_ARRAY RelativeIds = {0, NULL};
    SAMPR_ULONG_ARRAY Use = {0, NULL};
    ULONG DomainIndex;
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    Status = FUNC6(NULL,
                         &ServerHandle,
                         SAM_SERVER_CONNECT | SAM_SERVER_LOOKUP_DOMAIN);
    if (!FUNC2(Status))
    {
        FUNC9("SamrConnect failed (Status %08lx)\n", Status);
        goto done;
    }

    Status = FUNC8(ServerHandle,
                            DOMAIN_LOOKUP,
                            AccountDomainSid,
                            &DomainHandle);
    if (!FUNC2(Status))
    {
        FUNC9("SamOpenDomain failed (Status %08lx)\n", Status);
        goto done;
    }

    for (i = 0; i < Count; i++)
    {
        /* Ignore names which were already mapped */
        if (SidsBuffer[i].Use != SidTypeUnknown)
            continue;

        /* Ignore isolated account names */
        if (DomainNames[i].Length == 0)
            continue;

        if (!FUNC3((PUNICODE_STRING)&DomainNames[i], &AccountDomainName, TRUE))
            continue;

        FUNC9("Mapping name: %wZ\\%wZ\n", &DomainNames[i], &AccountNames[i]);

        Status = FUNC7(DomainHandle,
                                         1,
                                         &AccountNames[i],
                                         &RelativeIds,
                                         &Use);
        if (FUNC2(Status))
        {
            SidsBuffer[i].Use = Use.Element[0];
            SidsBuffer[i].Sid = FUNC0(AccountDomainSid,
                                                       RelativeIds.Element[0]);
            if (SidsBuffer[i].Sid == NULL)
            {
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto done;
            }

            SidsBuffer[i].DomainIndex = -1;
            SidsBuffer[i].Flags = 0;

            Status = FUNC1(DomainsBuffer,
                                                &AccountDomainName,
                                                AccountDomainSid,
                                                &DomainIndex);
            if (!FUNC2(Status))
                goto done;

            SidsBuffer[i].DomainIndex = DomainIndex;

            (*Mapped)++;
        }

        FUNC4(&RelativeIds);
        FUNC4(&Use);
    }

done:
    if (DomainHandle != NULL)
        FUNC5(&DomainHandle);

    if (ServerHandle != NULL)
        FUNC5(&ServerHandle);

    return Status;
}