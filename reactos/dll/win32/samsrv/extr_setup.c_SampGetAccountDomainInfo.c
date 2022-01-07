
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Length; } ;
typedef int PVOID ;
typedef int PPOLICY_ACCOUNT_DOMAIN_INFO ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ LSA_OBJECT_ATTRIBUTES ;
typedef int LSA_HANDLE ;


 int ERR (char*,scalar_t__) ;
 int LsaClose (int ) ;
 scalar_t__ LsaOpenPolicy (int *,TYPE_1__*,int ,int *) ;
 scalar_t__ LsaQueryInformationPolicy (int ,int ,int *) ;
 int POLICY_VIEW_LOCAL_INFORMATION ;
 int PolicyAccountDomainInformation ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*) ;
 int memset (TYPE_1__*,int ,int) ;

NTSTATUS
SampGetAccountDomainInfo(PPOLICY_ACCOUNT_DOMAIN_INFO *AccountDomainInfo)
{
    LSA_OBJECT_ATTRIBUTES ObjectAttributes;
    LSA_HANDLE PolicyHandle;
    NTSTATUS Status;

    TRACE("SampGetAccountDomainInfo\n");

    memset(&ObjectAttributes, 0, sizeof(LSA_OBJECT_ATTRIBUTES));
    ObjectAttributes.Length = sizeof(LSA_OBJECT_ATTRIBUTES);

    Status = LsaOpenPolicy(((void*)0),
                           &ObjectAttributes,
                           POLICY_VIEW_LOCAL_INFORMATION,
                           &PolicyHandle);
    if (Status != STATUS_SUCCESS)
    {
        ERR("LsaOpenPolicy failed (Status: 0x%08lx)\n", Status);
        return Status;
    }

    Status = LsaQueryInformationPolicy(PolicyHandle,
                                       PolicyAccountDomainInformation,
                                       (PVOID *)AccountDomainInfo);

    LsaClose(PolicyHandle);

    return Status;
}
