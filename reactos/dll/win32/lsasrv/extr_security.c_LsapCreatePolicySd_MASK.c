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
typedef  int /*<<< orphan*/  ACCESS_DENIED_ACE ;
typedef  int /*<<< orphan*/  ACCESS_ALLOWED_ACE ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_REVISION ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NtAuthority ; 
 int POLICY_ALL_ACCESS ; 
 int POLICY_EXECUTE ; 
 int POLICY_LOOKUP_NAMES ; 
 int POLICY_NOTIFICATION ; 
 int POLICY_VIEW_LOCAL_INFORMATION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SECURITY_ANONYMOUS_LOGON_RID ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 int /*<<< orphan*/  SECURITY_LOCAL_SERVICE_RID ; 
 int /*<<< orphan*/  SECURITY_LOCAL_SYSTEM_RID ; 
 int /*<<< orphan*/  SECURITY_NETWORK_SERVICE_RID ; 
 int /*<<< orphan*/  SECURITY_WORLD_RID ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WorldSidAuthority ; 

NTSTATUS
FUNC14(PSECURITY_DESCRIPTOR *PolicySd,
                   PULONG PolicySdSize)
{
    SECURITY_DESCRIPTOR AbsoluteSd;
    PSECURITY_DESCRIPTOR RelativeSd = NULL;
    ULONG RelativeSdSize = 0;
    PSID AnonymousSid = NULL;
    PSID AdministratorsSid = NULL;
    PSID EveryoneSid = NULL;
    PSID LocalServiceSid = NULL;
    PSID NetworkServiceSid = NULL;
    PSID LocalSystemSid = NULL;
    PACL Dacl = NULL;
    ULONG DaclSize;
    NTSTATUS Status;

    if (PolicySd == NULL || PolicySdSize == NULL)
        return STATUS_INVALID_PARAMETER;

    *PolicySd = NULL;
    *PolicySdSize = 0;

    /* Initialize the SD */
    Status = FUNC7(&AbsoluteSd,
                                         SECURITY_DESCRIPTOR_REVISION);
    if (!FUNC0(Status))
        return Status;

    Status = FUNC4(&NtAuthority,
                                         1,
                                         SECURITY_ANONYMOUS_LOGON_RID,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         &AnonymousSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC4(&NtAuthority,
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

    Status = FUNC4(&WorldSidAuthority,
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

    Status = FUNC4(&NtAuthority,
                                         1,
                                         SECURITY_LOCAL_SERVICE_RID,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         &LocalServiceSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC4(&NtAuthority,
                                         1,
                                         SECURITY_NETWORK_SERVICE_RID,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         0,
                                         &NetworkServiceSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC4(&NtAuthority,
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
               sizeof(ACCESS_DENIED_ACE)  - sizeof(ULONG) + FUNC10(AnonymousSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC10(AdministratorsSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC10(EveryoneSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC10(AnonymousSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC10(LocalServiceSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + FUNC10(NetworkServiceSid);

    Dacl = FUNC5(FUNC9(),
                           HEAP_ZERO_MEMORY,
                           DaclSize);
    if (Dacl == NULL)
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    Status = FUNC6(Dacl,
                          DaclSize,
                          ACL_REVISION);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC3(Dacl,
                                   ACL_REVISION,
                                   POLICY_LOOKUP_NAMES,
                                   AnonymousSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    POLICY_ALL_ACCESS | POLICY_NOTIFICATION,
                                    AdministratorsSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    POLICY_EXECUTE,
                                    EveryoneSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    POLICY_LOOKUP_NAMES | POLICY_VIEW_LOCAL_INFORMATION,
                                    AnonymousSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    POLICY_NOTIFICATION,
                                    LocalServiceSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC2(Dacl,
                                    ACL_REVISION,
                                    POLICY_NOTIFICATION,
                                    NetworkServiceSid);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC11(&AbsoluteSd,
                                          TRUE,
                                          Dacl,
                                          FALSE);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC12(&AbsoluteSd,
                                           LocalSystemSid,
                                           FALSE);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC13(&AbsoluteSd,
                                           AdministratorsSid,
                                           FALSE);
    if (!FUNC0(Status))
        goto done;

    Status = FUNC1(&AbsoluteSd,
                                         RelativeSd,
                                         &RelativeSdSize);
    if (Status != STATUS_BUFFER_TOO_SMALL)
        goto done;

    RelativeSd = FUNC5(FUNC9(),
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

    *PolicySd = RelativeSd;
    *PolicySdSize = RelativeSdSize;

done:
    if (Dacl != NULL)
        FUNC8(FUNC9(), 0, Dacl);

    if (AnonymousSid != NULL)
        FUNC8(FUNC9(), 0, AnonymousSid);

    if (AdministratorsSid != NULL)
        FUNC8(FUNC9(), 0, AdministratorsSid);

    if (EveryoneSid != NULL)
        FUNC8(FUNC9(), 0, EveryoneSid);

    if (LocalServiceSid != NULL)
        FUNC8(FUNC9(), 0, LocalServiceSid);

    if (NetworkServiceSid != NULL)
        FUNC8(FUNC9(), 0, NetworkServiceSid);

    if (LocalSystemSid != NULL)
        FUNC8(FUNC9(), 0, LocalSystemSid);

    if (!FUNC0(Status))
    {
        if (RelativeSd != NULL)
            FUNC8(FUNC9(), 0, RelativeSd);
    }

    return Status;
}