
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char WCHAR ;
typedef int TimeStamp ;
struct TYPE_4__ {char* User; char* Domain; char* Password; int Flags; void* PasswordLength; void* DomainLength; void* UserLength; } ;
typedef TYPE_1__ SEC_WINNT_AUTH_IDENTITY_W ;
typedef TYPE_1__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef scalar_t__ SECURITY_STATUS ;
typedef int * PSecPkgInfoA ;
typedef int CredHandle ;


 int SECPKG_CRED_OUTBOUND ;
 scalar_t__ SEC_E_OK ;
 int SEC_WINNT_AUTH_IDENTITY_ANSI ;
 int SEC_WINNT_AUTH_IDENTITY_UNICODE ;
 int getSecError (scalar_t__) ;
 void* lstrlenW (char*) ;
 int ok (int,char*,...) ;
 scalar_t__ pAcquireCredentialsHandleW (int *,char*,int ,int *,TYPE_1__*,int *,int *,int *,int *) ;
 int pFreeContextBuffer (int *) ;
 int pFreeCredentialsHandle (int *) ;
 scalar_t__ pQuerySecurityPackageInfoA (int ,int **) ;
 int sec_pkg_name ;
 void* strlen (scalar_t__) ;
 scalar_t__ test_pass ;
 scalar_t__ test_user ;
 int win_skip (char*) ;
 scalar_t__ workgroup ;

__attribute__((used)) static void testAcquireCredentialsHandleW(void)
{
    CredHandle cred;
    TimeStamp ttl;
    static WCHAR sec_pkg_nameW[] = {'N','T','L','M',0 };
    static WCHAR test_userW[] = {'t','e','s','t','u','s','e','r',0 };
    static WCHAR workgroupW[] = {'W','O','R','K','G','R','O','U','P',0};
    static WCHAR test_passW[] = {'t','e','s','t','p','a','s','s',0};
    SECURITY_STATUS ret;
    SEC_WINNT_AUTH_IDENTITY_A idA;
    SEC_WINNT_AUTH_IDENTITY_W id;
    PSecPkgInfoA pkg_info = ((void*)0);

    if(!pAcquireCredentialsHandleW)
    {
        win_skip("AcquireCredentialsHandleW not available\n");
        return;
    }

    if(pQuerySecurityPackageInfoA(sec_pkg_name, &pkg_info) != SEC_E_OK)
    {
        ok(0, "NTLM package not installed, skipping test\n");
        return;
    }
    pFreeContextBuffer(pkg_info);

    id.User = test_userW;
    id.UserLength = lstrlenW(test_userW);
    id.Domain = workgroupW;
    id.DomainLength = lstrlenW(workgroupW);
    id.Password = test_passW;
    id.PasswordLength = lstrlenW(test_passW);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_UNICODE;

    ret = pAcquireCredentialsHandleW(((void*)0), sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.DomainLength = 0;
    ret = pAcquireCredentialsHandleW(((void*)0), sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.Domain = ((void*)0);
    ret = pAcquireCredentialsHandleW(((void*)0), sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.Domain = workgroupW;
    id.DomainLength = lstrlenW(workgroupW);
    id.UserLength = 0;
    id.User = ((void*)0);
    ret = pAcquireCredentialsHandleW(((void*)0), sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);

    id.User = test_userW;
    id.UserLength = lstrlenW(test_userW);
    id.Password = test_passW;
    id.PasswordLength = 0;
    ret = pAcquireCredentialsHandleW(((void*)0), sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            ((void*)0), &id, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);


    idA.User = (unsigned char*) test_user;
    idA.UserLength = strlen(test_user);
    idA.Domain = (unsigned char *) workgroup;
    idA.DomainLength = strlen(workgroup);
    idA.Password = (unsigned char*) test_pass;
    idA.PasswordLength = strlen(test_pass);
    idA.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    ret = pAcquireCredentialsHandleW(((void*)0), sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            ((void*)0), &idA, ((void*)0), ((void*)0), &cred, &ttl);
    ok(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            getSecError(ret));
    pFreeCredentialsHandle(&cred);
}
