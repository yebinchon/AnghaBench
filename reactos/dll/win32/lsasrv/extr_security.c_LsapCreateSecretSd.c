
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SECURITY_DESCRIPTOR ;
typedef int* PULONG ;
typedef int * PSID ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int * PACL ;
typedef scalar_t__ NTSTATUS ;
typedef int ACL ;
typedef int ACCESS_ALLOWED_ACE ;


 int ACL_REVISION ;
 int DOMAIN_ALIAS_RID_ADMINS ;
 int FALSE ;
 int HEAP_ZERO_MEMORY ;
 int NT_SUCCESS (scalar_t__) ;
 int NtAuthority ;
 scalar_t__ RtlAbsoluteToSelfRelativeSD (int *,int *,int*) ;
 scalar_t__ RtlAddAccessAllowedAce (int *,int ,int ,int *) ;
 scalar_t__ RtlAllocateAndInitializeSid (int *,int,int ,int ,int ,int ,int ,int ,int ,int ,int **) ;
 int * RtlAllocateHeap (int ,int ,int) ;
 scalar_t__ RtlCreateAcl (int *,int,int ) ;
 scalar_t__ RtlCreateSecurityDescriptor (int *,int ) ;
 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;
 int RtlLengthSid (int *) ;
 scalar_t__ RtlSetDaclSecurityDescriptor (int *,int ,int *,int ) ;
 scalar_t__ RtlSetGroupSecurityDescriptor (int *,int *,int ) ;
 scalar_t__ RtlSetOwnerSecurityDescriptor (int *,int *,int ) ;
 int SECRET_ALL_ACCESS ;
 int SECRET_EXECUTE ;
 int SECURITY_BUILTIN_DOMAIN_RID ;
 int SECURITY_DESCRIPTOR_REVISION ;
 int SECURITY_LOCAL_SYSTEM_RID ;
 int SECURITY_WORLD_RID ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 int TRUE ;
 int WorldSidAuthority ;

NTSTATUS
LsapCreateSecretSd(PSECURITY_DESCRIPTOR *SecretSd,
                   PULONG SecretSdSize)
{
    SECURITY_DESCRIPTOR AbsoluteSd;
    PSECURITY_DESCRIPTOR RelativeSd = ((void*)0);
    ULONG RelativeSdSize = 0;
    PSID AdministratorsSid = ((void*)0);
    PSID EveryoneSid = ((void*)0);
    PSID LocalSystemSid = ((void*)0);
    PACL Dacl = ((void*)0);
    ULONG DaclSize;
    NTSTATUS Status;

    if (SecretSd == ((void*)0) || SecretSdSize == ((void*)0))
        return STATUS_INVALID_PARAMETER;

    *SecretSd = ((void*)0);
    *SecretSdSize = 0;


    Status = RtlCreateSecurityDescriptor(&AbsoluteSd,
                                         SECURITY_DESCRIPTOR_REVISION);
    if (!NT_SUCCESS(Status))
        return Status;

    Status = RtlAllocateAndInitializeSid(&NtAuthority,
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
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlAllocateAndInitializeSid(&WorldSidAuthority,
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
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlAllocateAndInitializeSid(&NtAuthority,
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
    if (!NT_SUCCESS(Status))
        goto done;


    DaclSize = sizeof(ACL) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + RtlLengthSid(AdministratorsSid) +
               sizeof(ACCESS_ALLOWED_ACE) - sizeof(ULONG) + RtlLengthSid(EveryoneSid);

    Dacl = RtlAllocateHeap(RtlGetProcessHeap(),
                           HEAP_ZERO_MEMORY,
                           DaclSize);
    if (Dacl == ((void*)0))
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    Status = RtlCreateAcl(Dacl,
                          DaclSize,
                          ACL_REVISION);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlAddAccessAllowedAce(Dacl,
                                    ACL_REVISION,
                                    SECRET_ALL_ACCESS,
                                    AdministratorsSid);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlAddAccessAllowedAce(Dacl,
                                    ACL_REVISION,
                                    SECRET_EXECUTE,
                                    EveryoneSid);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlSetDaclSecurityDescriptor(&AbsoluteSd,
                                          TRUE,
                                          Dacl,
                                          FALSE);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlSetGroupSecurityDescriptor(&AbsoluteSd,
                                           LocalSystemSid,
                                           FALSE);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlSetOwnerSecurityDescriptor(&AbsoluteSd,
                                           AdministratorsSid,
                                           FALSE);
    if (!NT_SUCCESS(Status))
        goto done;

    Status = RtlAbsoluteToSelfRelativeSD(&AbsoluteSd,
                                         RelativeSd,
                                         &RelativeSdSize);
    if (Status != STATUS_BUFFER_TOO_SMALL)
        goto done;

    RelativeSd = RtlAllocateHeap(RtlGetProcessHeap(),
                                 HEAP_ZERO_MEMORY,
                                 RelativeSdSize);
    if (RelativeSd == ((void*)0))
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    Status = RtlAbsoluteToSelfRelativeSD(&AbsoluteSd,
                                         RelativeSd,
                                         &RelativeSdSize);
    if (!NT_SUCCESS(Status))
        goto done;

    *SecretSd = RelativeSd;
    *SecretSdSize = RelativeSdSize;

done:
    if (Dacl != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, Dacl);

    if (AdministratorsSid != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, AdministratorsSid);

    if (EveryoneSid != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, EveryoneSid);

    if (LocalSystemSid != ((void*)0))
        RtlFreeHeap(RtlGetProcessHeap(), 0, LocalSystemSid);

    if (!NT_SUCCESS(Status))
    {
        if (RelativeSd != ((void*)0))
            RtlFreeHeap(RtlGetProcessHeap(), 0, RelativeSd);
    }

    return Status;
}
