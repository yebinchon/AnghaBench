#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_6__ {TYPE_1__ PolicyAccountDomainInfo; } ;
typedef  int /*<<< orphan*/ * PRPC_SID ;
typedef  TYPE_2__* PLSAPR_POLICY_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LSAPR_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PolicyAccountDomainInformation ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
NTSTATUS
FUNC11(PRPC_SID *Sid)
{
    LSAPR_HANDLE PolicyHandle = NULL;
    PLSAPR_POLICY_INFORMATION PolicyInfo = NULL;
    ULONG Length = 0;
    NTSTATUS Status;

    Status = FUNC2(&PolicyHandle);
    if (!FUNC5(Status))
    {
        FUNC9("LsaIOpenPolicyTrusted() failed (Status 0x%08lx)\n", Status);
        return Status;
    }

    Status = FUNC4(PolicyHandle,
                                        PolicyAccountDomainInformation,
                                        &PolicyInfo);
    if (!FUNC5(Status))
    {
        FUNC9("LsarQueryInformationPolicy() failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    Length = FUNC8(PolicyInfo->PolicyAccountDomainInfo.Sid);

    *Sid = FUNC6(FUNC7(), 0, Length);
    if (*Sid == NULL)
    {
        FUNC0("Failed to allocate SID\n");
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    FUNC10(*Sid, PolicyInfo->PolicyAccountDomainInfo.Sid, Length);

done:
    if (PolicyInfo != NULL)
        FUNC1(PolicyAccountDomainInformation,
                                          PolicyInfo);

    if (PolicyHandle != NULL)
        FUNC3(&PolicyHandle);

    return Status;
}