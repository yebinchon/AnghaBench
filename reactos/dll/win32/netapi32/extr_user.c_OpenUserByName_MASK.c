#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  SAM_HANDLE ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  scalar_t__* PULONG ;
typedef  scalar_t__* PSID_NAME_USE ;
typedef  int /*<<< orphan*/  PSAM_HANDLE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  NET_API_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  NERR_GroupNotFound ; 
 int /*<<< orphan*/  NERR_Success ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__**,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SidTypeUser ; 

__attribute__((used)) static
NET_API_STATUS
FUNC6(SAM_HANDLE DomainHandle,
               PUNICODE_STRING UserName,
               ULONG DesiredAccess,
               PSAM_HANDLE UserHandle)
{
    PULONG RelativeIds = NULL;
    PSID_NAME_USE Use = NULL;
    NET_API_STATUS ApiStatus = NERR_Success;
    NTSTATUS Status = STATUS_SUCCESS;

    /* Get the RID for the given user name */
    Status = FUNC4(DomainHandle,
                                    1,
                                    UserName,
                                    &RelativeIds,
                                    &Use);
    if (!FUNC1(Status))
    {
        FUNC0("SamLookupNamesInDomain failed (Status %08lx)\n", Status);
        return FUNC2(Status);
    }

    /* Fail, if it is not an alias account */
    if (Use[0] != SidTypeUser)
    {
        FUNC0("Object is not a user!\n");
        ApiStatus = NERR_GroupNotFound;
        goto done;
    }

    /* Open the alias account */
    Status = FUNC5(DomainHandle,
                         DesiredAccess,
                         RelativeIds[0],
                         UserHandle);
    if (!FUNC1(Status))
    {
        FUNC0("SamOpenUser failed (Status %08lx)\n", Status);
        ApiStatus = FUNC2(Status);
        goto done;
    }

done:
    if (RelativeIds != NULL)
        FUNC3(RelativeIds);

    if (Use != NULL)
        FUNC3(Use);

    return ApiStatus;
}