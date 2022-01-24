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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * PACL ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  ACL ;
typedef  int /*<<< orphan*/  ACCESS_ALLOWED_ACE ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_REVISION ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NtAuthority ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SECRET_ALL_ACCESS ; 
 int /*<<< orphan*/  SECRET_EXECUTE ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int /*<<< orphan*/  SECURITY_LOCAL_SYSTEM_RID ; 
 int /*<<< orphan*/  SECURITY_WORLD_RID ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WorldSidAuthority ; 

NTSTATUS
FUNC13(PSECURITY_DESCRIPTOR *SecretSd,
                   PULONG SecretSdSize)
{
    SECURITY_DESCRIPTOR AbsoluteSd;
    PSECURITY_DESCRIPTOR RelativeSd = NULL;
    ULONG RelativeSdSize = 0;
    PSID AdministratorsSid = NULL;
    PSID EveryoneSid = NULL;
    PSID LocalSystemSid = NULL;
    PACL Dacl = NULL;
    ULONG DaclSize;
    NTSTATUS Status;

    if (SecretSd == NULL || SecretSdSize == NULL)
        return STATUS_INVALID_PARAMETER;

    *SecretSd = NULL;
    *SecretSdSize = 0;

    /* Initialize the SD */
    Status = FUNC6(&AbsoluteSd,
                                         SECURITY_DESCRIPTOR_REVISION);
    if (!FUNC0(Status))
        return Status;

    Status = FUNC3(&NtAuthority,
                                         2,
                                         SECURITY_BUILTIN_DOMAIN_RID,
                                         DOMAIN_ALIAS_RID_ADMINS,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         &AdministratorsSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC3(&WorldSidAuthority,
                                         1,
                                         SECURITY_WORLD_RID,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         &EveryoneSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC3(&NtAuthority,
                                         1,
                                         SECURITY_LOCAL_SYSTEM_RID,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         &LocalSystemSid);
    if (!FUNC0(Status))
        goto done;

    /* Allocate and initialize the DACL */
    DaclSize = sizeof(ACL) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC9(AdministratorsSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC9(EveryoneSid);

    Dacl = FUNC4(FUNC8(),
                           HEAP_ZERO_MEMORY,
                           DaclSize);
    if (Dacl == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    Status = FUNC5(Dacl,
                          DaclSize,
                          ACL_REVISION);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    SECRET_ALL_ACCESS,
                                    AdministratorsSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    SECRET_EXECUTE,
                                    EveryoneSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC10(&AbsoluteSd,
                                          TRUE,
                                          Dacl,
                                          FALSE);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC11(&AbsoluteSd,
                                           LocalSystemSid,
                                           FALSE);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC12(&AbsoluteSd,
                                           AdministratorsSid,
                                           FALSE);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC1(&AbsoluteSd,
                                         RelativeSd,
                                         &RelativeSdSize);
    if (Status != STATUS_BUFFER_TOO_SMALL)
        goto done;

    RelativeSd = FUNC4(FUNC8(),
                                 HEAP_ZERO_MEMORY,
                                 RelativeSdSize);
    if (RelativeSd == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    Status = FUNC1(&AbsoluteSd,
                                         RelativeSd,
                                         &RelativeSdSize);
    if (!FUNC0(Status))
        goto done;

    *SecretSd = RelativeSd;
    *SecretSdSize = RelativeSdSize;

done:
    if (Dacl != NULL)
        FUNC7(FUNC8(), 0, Dacl);

    if (AdministratorsSid != NULL)
        FUNC7(FUNC8(), 0, AdministratorsSid);

    if (EveryoneSid != NULL)
        FUNC7(FUNC8(), 0, EveryoneSid);

    if (LocalSystemSid != NULL)
        FUNC7(FUNC8(), 0, LocalSystemSid);

    if (!FUNC0(Status))
    {
        if (RelativeSd != NULL)
            FUNC7(FUNC8(), 0, RelativeSd);
    }

    return Status;
}