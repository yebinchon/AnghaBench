#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_3__ {unsigned char* User; unsigned char* Domain; unsigned char* Password; void* PasswordLength; void* UserLength; void* DomainLength; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__ SEC_WINNT_AUTH_IDENTITY_A ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  int /*<<< orphan*/ * PSecPkgInfoA ;
typedef  int /*<<< orphan*/  CredHandle ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SECPKG_CRED_OUTBOUND ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  SEC_WINNT_AUTH_IDENTITY_ANSI ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  sec_pkg_name ; 
 void* FUNC6 (char*) ; 
 scalar_t__ test_pass ; 
 scalar_t__ test_user ; 
 scalar_t__ workgroup ; 

__attribute__((used)) static BOOL FUNC7(void)
{
    CredHandle cred;
    TimeStamp ttl;
    SECURITY_STATUS ret;
    SEC_WINNT_AUTH_IDENTITY_A id;
    PSecPkgInfoA pkg_info = NULL;

    if(FUNC5(sec_pkg_name, &pkg_info) != SEC_E_OK)
    {
        FUNC1(0, "NTLM package not installed, skipping test\n");
        return FALSE;
    }
    FUNC3(pkg_info);

    id.User = (unsigned char*) test_user;
    id.UserLength = FUNC6((char *) id.User);
    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = FUNC6((char *) id.Domain);
    id.Password = (unsigned char*) test_pass;
    id.PasswordLength = FUNC6((char *) id.Password);
    id.Flags = SEC_WINNT_AUTH_IDENTITY_ANSI;

    ret = FUNC2(NULL, sec_pkg_name, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC1(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC0(ret));
    FUNC4(&cred);

    id.DomainLength = 0;
    ret = FUNC2(NULL, sec_pkg_name, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC1(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC0(ret));
    FUNC4(&cred);

    id.Domain = NULL;
    ret = FUNC2(NULL, sec_pkg_name, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC1(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC0(ret));
    FUNC4(&cred);

    id.Domain = (unsigned char *) workgroup;
    id.DomainLength = FUNC6((char *) id.Domain);
    id.UserLength = 0;
    id.User = NULL;
    ret = FUNC2(NULL, sec_pkg_name, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC1(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC0(ret));
    FUNC4(&cred);

    id.User = (unsigned char*) test_user;
    id.UserLength = FUNC6((char *) id.User);
    id.Password = NULL;
    id.PasswordLength = 0;
    ret = FUNC2(NULL, sec_pkg_name, SECPKG_CRED_OUTBOUND,
            NULL, &id, NULL, NULL, &cred, &ttl);
    FUNC1(ret == SEC_E_OK, "AcquireCredentialsHandle() returned %s\n",
            FUNC0(ret));
    FUNC4(&cred);
    return TRUE;
}