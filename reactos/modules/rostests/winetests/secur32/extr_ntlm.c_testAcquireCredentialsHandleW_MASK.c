#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_4__ {char* User; char* Domain; char* Password; int /*<<< orphan*/  Flags; void* PasswordLength; void* DomainLength; void* UserLength; } ;
typedef  TYPE_1__ SEC_WINNT_AUTH_IDENTITY_W ;
typedef  TYPE_1__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/ * PSecPkgInfoA ;
typedef  int /*<<< orphan*/  CredHandle ;

/* Variables and functions */
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  SEC_WINNT_AUTH_IDENTITY_ANSI ; 
 int /*<<< orphan*/  SEC_WINNT_AUTH_IDENTITY_UNICODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  sec_pkg_name ; 
 void* FUNC7 (scalar_t__) ; 
 scalar_t__ test_pass ; 
 scalar_t__ test_user ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ workgroup ; 

__attribute__((used)) static void FUNC9(void)
{
    CredHandle cred;
    TimeStamp ttl;
    static WCHAR sec_pkg_nameW[] = {'N','T','L','M',0 };
    static WCHAR test_userW[]    = {'t','e','s','t','u','s','e','r',0 };
    static WCHAR workgroupW[]    = {'W','O','R','K','G','R','O','U','P',0};
    static WCHAR test_passW[]    = {'t','e','s','t','p','a','s','s',0};
    SECURITY_STATUS ret;
    SEC_WINNT_AUTH_IDENTITY_A idA;
    SEC_WINNT_AUTH_IDENTITY_W id;
    PSecPkgInfoA pkg_info = NULL;

    if(!&pAcquireCredentialsHandleW)
    {
        FUNC8("AcquireCredentialsHandleW not available\n");
        return;
    }

    if(FUNC6(sec_pkg_name, &pkg_info) != SEC_E_OK)
    {
        FUNC2(0, "NTLM package not installed, skipping test\n");
        return;
    }
    FUNC4(pkg_info);

    id.User = test_userW;
    id.UserLength = FUNC1(test_userW);
    id.Domain = workgroupW;
    id.DomainLength = FUNC1(workgroupW);
    id.Password = test_passW;
    id.PasswordLength = FUNC1(test_passW);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_UNICODE;

    ret = FUNC3(NULL, sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC2(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            FUNC0(ret));
    FUNC5(&cred);

    id.DomainLength = 0;
    ret = FUNC3(NULL, sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC2(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            FUNC0(ret));
    FUNC5(&cred);

    id.Domain = NULL;
    ret = FUNC3(NULL, sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC2(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            FUNC0(ret));
    FUNC5(&cred);

    id.Domain = workgroupW;
    id.DomainLength = FUNC1(workgroupW);
    id.UserLength = 0;
    id.User = NULL;
    ret = FUNC3(NULL, sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC2(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            FUNC0(ret));
    FUNC5(&cred);

    id.User = test_userW;
    id.UserLength = FUNC1(test_userW);
    id.Password = test_passW;    /* NULL string causes a crash. */
    id.PasswordLength = 0;
    ret = FUNC3(NULL, sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC2(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            FUNC0(ret));
    FUNC5(&cred);

    /* Test using the ASCII structure. */
    idA.User = (unsigned char*) test_user;
    idA.UserLength = FUNC7(test_user);
    idA.Domain = (unsigned char *) workgroup;
    idA.DomainLength = FUNC7(workgroup);
    idA.Password = (unsigned char*) test_pass;
    idA.PasswordLength = FUNC7(test_pass);
    idA.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    ret = FUNC3(NULL, sec_pkg_nameW, SECPKG_CRED_OUTBOUND,
            NULL, &idA, NULL, NULL, &cred, &ttl);
    FUNC2(ret == SEC_E_OK, "AcquireCredentialsHandeW() returned %s\n",
            FUNC0(ret));
    FUNC5(&cred);
}