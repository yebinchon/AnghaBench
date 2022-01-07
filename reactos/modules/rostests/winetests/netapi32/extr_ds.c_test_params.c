
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PDSROLE_PRIMARY_DOMAIN_INFO_BASIC ;
typedef int PBYTE ;
typedef scalar_t__ DWORD ;


 int DsRolePrimaryDomainInfoBasic ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int SetLastError (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pDsRoleGetPrimaryDomainInformation (int *,int,int *) ;

__attribute__((used)) static void test_params(void)
{
    DWORD ret;
    PDSROLE_PRIMARY_DOMAIN_INFO_BASIC dpdi;

    SetLastError(0xdeadbeef);
    ret = pDsRoleGetPrimaryDomainInformation(((void*)0), DsRolePrimaryDomainInfoBasic, ((void*)0));
    ok( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);

    SetLastError(0xdeadbeef);
    ret = pDsRoleGetPrimaryDomainInformation(((void*)0), 0, ((void*)0));
    ok( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);
    SetLastError(0xdeadbeef);
    ret = pDsRoleGetPrimaryDomainInformation(((void*)0), 4, ((void*)0));
    ok( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);

    SetLastError(0xdeadbeef);
    ret = pDsRoleGetPrimaryDomainInformation(((void*)0), 4, (PBYTE *)&dpdi);
    ok( ret == ERROR_INVALID_PARAMETER, "Expected error ERROR_INVALID_PARAMETER, got (%d)\n", ret);
}
