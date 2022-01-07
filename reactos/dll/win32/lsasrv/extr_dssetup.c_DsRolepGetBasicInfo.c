
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_11__ {scalar_t__ DomainNameFlat; int MachineRole; } ;
struct TYPE_8__ {int Buffer; scalar_t__ Length; } ;
struct TYPE_9__ {TYPE_1__ DomainName; } ;
struct TYPE_10__ {TYPE_2__ PolicyAccountDomainInfo; } ;
typedef TYPE_3__* PLSAPR_POLICY_INFORMATION ;
typedef TYPE_4__* PDSROLER_PRIMARY_DOMAIN_INFO_BASIC ;
typedef scalar_t__ PDSROLER_PRIMARY_DOMAIN_INFORMATION ;
typedef int ObjectAttributes ;
typedef int NTSTATUS ;
typedef int NET_API_STATUS ;
typedef int LSA_HANDLE ;
typedef int LSAPR_OBJECT_ATTRIBUTES ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPBYTE ;
typedef int DSROLER_PRIMARY_DOMAIN_INFO_BASIC ;


 int DsRole_RoleStandaloneWorkstation ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int LsaIFree_LSAPR_POLICY_INFORMATION (int ,TYPE_3__*) ;
 int LsaNtStatusToWinError (int ) ;
 int LsarClose (int *) ;
 int LsarOpenPolicy (int *,int *,int ,int *) ;
 int LsarQueryInformationPolicy (int ,int ,TYPE_3__**) ;
 int NT_SUCCESS (int ) ;
 int POLICY_VIEW_LOCAL_INFORMATION ;
 int PolicyAccountDomainInformation ;
 int RtlZeroMemory (int *,int) ;
 int TRACE (char*,int ) ;
 TYPE_4__* midl_user_allocate (scalar_t__) ;
 int wcscpy (scalar_t__,int ) ;

__attribute__((used)) static
NET_API_STATUS
DsRolepGetBasicInfo(
    PDSROLER_PRIMARY_DOMAIN_INFORMATION *DomainInfo)
{
    LSAPR_OBJECT_ATTRIBUTES ObjectAttributes;
    PDSROLER_PRIMARY_DOMAIN_INFO_BASIC Buffer;
    PLSAPR_POLICY_INFORMATION PolicyInfo;
    LSA_HANDLE PolicyHandle;
    ULONG Size;
    NTSTATUS Status;

    RtlZeroMemory(&ObjectAttributes, sizeof(ObjectAttributes));
    Status = LsarOpenPolicy(((void*)0),
                            &ObjectAttributes,
                            POLICY_VIEW_LOCAL_INFORMATION,
                            &PolicyHandle);
    if (!NT_SUCCESS(Status))
    {
        TRACE("LsarOpenPolicyFailed with NT status %x\n",
              LsaNtStatusToWinError(Status));
        return ERROR_OUTOFMEMORY;
    }

    Status = LsarQueryInformationPolicy(PolicyHandle,
                                        PolicyAccountDomainInformation,
                                        &PolicyInfo);
    LsarClose(&PolicyHandle);
    if (!NT_SUCCESS(Status))
    {
        TRACE("LsarQueryInformationPolicy with NT status %x\n",
              LsaNtStatusToWinError(Status));
        return ERROR_OUTOFMEMORY;
    }

    Size = sizeof(DSROLER_PRIMARY_DOMAIN_INFO_BASIC) +
           PolicyInfo->PolicyAccountDomainInfo.DomainName.Length + sizeof(WCHAR);

    Buffer = midl_user_allocate(Size);
    if (Buffer == ((void*)0))
    {
        LsaIFree_LSAPR_POLICY_INFORMATION(PolicyAccountDomainInformation,
                                          PolicyInfo);
        return ERROR_OUTOFMEMORY;
    }

    Buffer->MachineRole = DsRole_RoleStandaloneWorkstation;
    Buffer->DomainNameFlat = (LPWSTR)((LPBYTE)Buffer +
                                      sizeof(DSROLER_PRIMARY_DOMAIN_INFO_BASIC));
    wcscpy(Buffer->DomainNameFlat, PolicyInfo->PolicyAccountDomainInfo.DomainName.Buffer);

    LsaIFree_LSAPR_POLICY_INFORMATION(PolicyAccountDomainInformation,
                                      PolicyInfo);

    *DomainInfo = (PDSROLER_PRIMARY_DOMAIN_INFORMATION)Buffer;

    return ERROR_SUCCESS;
}
