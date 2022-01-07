
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int policyPara ;
struct TYPE_8__ {int cbSize; int dwFlags; int member_0; } ;
struct TYPE_7__ {int wDay; int wMonth; int wYear; int member_0; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__ CERT_CHAIN_POLICY_PARA ;


 int CERT_CHAIN_POLICY_ALLOW_UNKNOWN_CA_FLAG ;
 int CERT_CHAIN_POLICY_AUTHENTICODE ;
 int CERT_CHAIN_POLICY_IGNORE_NOT_TIME_VALID_FLAG ;
 int CHECK_CHAIN_POLICY_STATUS (int ,int *,int ,TYPE_1__*,TYPE_2__*) ;
 int CHECK_CHAIN_POLICY_STATUS_ARRAY (int ,int *,int ,TYPE_1__*,int *) ;
 int authenticodePolicyCheck ;
 int ignoredInvalidDateBasePolicyCheck ;
 int ignoredUnknownCAPolicyCheck ;
 TYPE_1__ oct2007 ;

__attribute__((used)) static void check_authenticode_policy(void)
{
    CERT_CHAIN_POLICY_PARA policyPara = { 0 };
    SYSTEMTIME epochStart = { 0 };





    CHECK_CHAIN_POLICY_STATUS_ARRAY(CERT_CHAIN_POLICY_AUTHENTICODE, ((void*)0),
     authenticodePolicyCheck, &oct2007, ((void*)0));
    policyPara.cbSize = sizeof(policyPara);
    policyPara.dwFlags = CERT_CHAIN_POLICY_ALLOW_UNKNOWN_CA_FLAG;
    CHECK_CHAIN_POLICY_STATUS(CERT_CHAIN_POLICY_AUTHENTICODE, ((void*)0),
     ignoredUnknownCAPolicyCheck, &oct2007, &policyPara);
    epochStart.wDay = epochStart.wMonth = 1;
    epochStart.wYear = 1601;
    CHECK_CHAIN_POLICY_STATUS(CERT_CHAIN_POLICY_AUTHENTICODE, ((void*)0),
     ignoredUnknownCAPolicyCheck, &epochStart, &policyPara);
    policyPara.dwFlags = CERT_CHAIN_POLICY_IGNORE_NOT_TIME_VALID_FLAG;
    CHECK_CHAIN_POLICY_STATUS(CERT_CHAIN_POLICY_AUTHENTICODE, ((void*)0),
     ignoredInvalidDateBasePolicyCheck, &oct2007, &policyPara);
}
