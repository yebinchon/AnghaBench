
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int Sid; } ;
struct TYPE_6__ {TYPE_1__ PolicyAccountDomainInfo; } ;
typedef int * PRPC_SID ;
typedef TYPE_2__* PLSAPR_POLICY_INFORMATION ;
typedef int NTSTATUS ;
typedef int * LSAPR_HANDLE ;


 int ERR (char*) ;
 int LsaIFree_LSAPR_POLICY_INFORMATION (int ,TYPE_2__*) ;
 int LsaIOpenPolicyTrusted (int **) ;
 int LsarClose (int **) ;
 int LsarQueryInformationPolicy (int *,int ,TYPE_2__**) ;
 int NT_SUCCESS (int ) ;
 int PolicyAccountDomainInformation ;
 int * RtlAllocateHeap (int ,int ,int ) ;
 int RtlGetProcessHeap () ;
 int RtlLengthSid (int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int TRACE (char*,int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static
NTSTATUS
GetAccountDomainSid(PRPC_SID *Sid)
{
    LSAPR_HANDLE PolicyHandle = ((void*)0);
    PLSAPR_POLICY_INFORMATION PolicyInfo = ((void*)0);
    ULONG Length = 0;
    NTSTATUS Status;

    Status = LsaIOpenPolicyTrusted(&PolicyHandle);
    if (!NT_SUCCESS(Status))
    {
        TRACE("LsaIOpenPolicyTrusted() failed (Status 0x%08lx)\n", Status);
        return Status;
    }

    Status = LsarQueryInformationPolicy(PolicyHandle,
                                        PolicyAccountDomainInformation,
                                        &PolicyInfo);
    if (!NT_SUCCESS(Status))
    {
        TRACE("LsarQueryInformationPolicy() failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    Length = RtlLengthSid(PolicyInfo->PolicyAccountDomainInfo.Sid);

    *Sid = RtlAllocateHeap(RtlGetProcessHeap(), 0, Length);
    if (*Sid == ((void*)0))
    {
        ERR("Failed to allocate SID\n");
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    memcpy(*Sid, PolicyInfo->PolicyAccountDomainInfo.Sid, Length);

done:
    if (PolicyInfo != ((void*)0))
        LsaIFree_LSAPR_POLICY_INFORMATION(PolicyAccountDomainInformation,
                                          PolicyInfo);

    if (PolicyHandle != ((void*)0))
        LsarClose(&PolicyHandle);

    return Status;
}
