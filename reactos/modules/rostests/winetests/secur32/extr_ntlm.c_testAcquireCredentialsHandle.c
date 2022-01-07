
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TimeStamp ;
struct TYPE_3__ {unsigned char* User; unsigned char* Domain; unsigned char* Password; void* PasswordLength; void* UserLength; void* DomainLength; int Flags; } ;
typedef TYPE_1__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int * PSecPkgInfoA ;
typedef int CredHandle ;
typedef int BOOL ;


 int FALSE ;
 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 int SEC_WINNT_AUTH_IDENTITY_ANSI ;
 int TRUE ;
 int getSecError (scalar_t__) ;
 int ok (int,char*,...) ;
 scalar_t__ pAcquireCredentialsHandleA (int *,int ,int ,int *,TYPE_1__*,int *,int *,int *,int *) ;
 int pFreeContextBuffer (int *) ;
 int pFreeCredentialsHandle (int *) ;
 scalar_t__ pQuerySecurityPackageInfoA (int ,int **) ;
 int sec_pkg_name ;
 void* strlen (char*) ;
 scalar_t__ test_pass ;
 scalar_t__ test_user ;
 scalar_t__ workgroup ;

__attribute__((used)) static BOOL testAcquireCredentialsHandle(void)
{
    CredHandle cred;
    TimeStamp ttl;
    SECURITY_STATUS ret;
    SEC_WINNT_AUTH_IDENTITY_A id;
    PSecPkgInfoA pkg_info = ((void*)0);

    if(pQuerySecurityPackageInfoA(sec_pkg_name, &pkg_info) != SEC_E_OK)
    {
        ok(0, "NTLM package not installed, skipping test\n");
        return FALSE;
    }
    pFreeContextBuffer(pkg_info);

    id.User = (unsigned char*) test_user;
    id.UserLength = strlen((char *) id.User);
    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = strlen((char *) id.Domain);
    id.Password = (unsigned char*) test_pass;
    id.PasswordLength = strlen((char *) id.Password);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    ret = pAcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.DomainLength = 0;
    ret = pAcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.Domain = ((void*)0);
    ret = pAcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = strlen((char *) id.Domain);
    id.UserLength = 0;
    id.User = ((void*)0);
    ret = pAcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.User = (unsigned char*) test_user;
    id.UserLength = strlen((char *) id.User);
    id.Password = ((void*)0);
    id.PasswordLength = 0;
    ret = pAcquireCredentialsHandleA(((void*)0), sec_pkg_name, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);
    return TRUE;
}
