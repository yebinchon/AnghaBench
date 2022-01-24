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
struct TYPE_3__ {char* TargetName; char* Comment; char* UserName; void* Type; int /*<<< orphan*/  Persist; int /*<<< orphan*/ * TargetAlias; int /*<<< orphan*/ * Attributes; scalar_t__ AttributeCount; int /*<<< orphan*/ * CredentialBlob; scalar_t__ CredentialBlobSize; scalar_t__ Flags; } ;
typedef  TYPE_1__ CREDENTIALA ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRED_PERSIST_ENTERPRISE ; 
 int /*<<< orphan*/  CRED_PERSIST_LOCAL_MACHINE ; 
 int /*<<< orphan*/  CRED_PERSIST_SESSION ; 
 void* CRED_TYPE_DOMAIN_PASSWORD ; 
 void* CRED_TYPE_GENERIC ; 
 scalar_t__ ERROR_BAD_USERNAME ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ ERROR_NO_SUCH_LOGON_SESSION ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TEST_TARGET_NAME ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
    CREDENTIALA new_cred;
    BOOL ret;

    FUNC1(0xdeadbeef);
    ret = FUNC5(NULL, 0);
    FUNC3(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
        "CredWriteA should have failed with ERROR_INVALID_PARAMETER instead of %d\n",
        FUNC0());

    new_cred.Flags = 0;
    new_cred.Type = CRED_TYPE_GENERIC;
    new_cred.TargetName = NULL;
    new_cred.Comment = (char *)"Comment";
    new_cred.CredentialBlobSize = 0;
    new_cred.CredentialBlob = NULL;
    new_cred.Persist = CRED_PERSIST_ENTERPRISE;
    new_cred.AttributeCount = 0;
    new_cred.Attributes = NULL;
    new_cred.TargetAlias = NULL;
    new_cred.UserName = (char *)"winetest";

    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    FUNC3(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
        "CredWriteA should have failed with ERROR_INVALID_PARAMETER instead of %d\n",
        FUNC0());

    new_cred.TargetName = (char *)TEST_TARGET_NAME;
    new_cred.Type = CRED_TYPE_DOMAIN_PASSWORD;

    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    if (ret)
    {
        FUNC3(FUNC0() == ERROR_SUCCESS ||
           FUNC0() == ERROR_IO_PENDING, /* Vista */
           "Expected ERROR_IO_PENDING, got %d\n", FUNC0());
    }
    else
    {
        FUNC3(FUNC0() == ERROR_BAD_USERNAME ||
           FUNC0() == ERROR_NO_SUCH_LOGON_SESSION, /* Vista */
           "CredWrite with username without domain should return ERROR_BAD_USERNAME"
           "or ERROR_NO_SUCH_LOGON_SESSION not %d\n", FUNC0());
    }

    new_cred.UserName = NULL;
    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    FUNC3(!ret && FUNC0() == ERROR_BAD_USERNAME,
        "CredWriteA with NULL username should have failed with ERROR_BAD_USERNAME instead of %d\n",
        FUNC0());

    new_cred.UserName = (char *)"winetest";
    new_cred.Persist = CRED_PERSIST_LOCAL_MACHINE;
    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    FUNC3(ret || FUNC2(!ret), "CredWriteA failed with error %u\n", FUNC0());
    if (ret)
    {
        ret = FUNC4(TEST_TARGET_NAME, CRED_TYPE_DOMAIN_PASSWORD, 0);
        FUNC3(ret, "CredDeleteA failed with error %u\n", FUNC0());
    }
    new_cred.Type = CRED_TYPE_GENERIC;
    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    FUNC3(ret || FUNC2(!ret), "CredWriteA failed with error %u\n", FUNC0());
    if  (ret)
    {
        ret = FUNC4(TEST_TARGET_NAME, CRED_TYPE_GENERIC, 0);
        FUNC3(ret, "CredDeleteA failed with error %u\n", FUNC0());
    }
    new_cred.Persist = CRED_PERSIST_SESSION;
    ret = FUNC5(&new_cred, 0);
    FUNC3(ret, "CredWriteA failed with error %u\n", FUNC0());

    ret = FUNC4(TEST_TARGET_NAME, CRED_TYPE_GENERIC, 0);
    FUNC3(ret, "CredDeleteA failed with error %u\n", FUNC0());

    new_cred.Type = CRED_TYPE_DOMAIN_PASSWORD;
    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    FUNC3(ret || FUNC2(!ret), "CredWriteA failed with error %u\n", FUNC0());
    if (ret)
    {
        ret = FUNC4(TEST_TARGET_NAME, CRED_TYPE_DOMAIN_PASSWORD, 0);
        FUNC3(ret, "CredDeleteA failed with error %u\n", FUNC0());
    }
    new_cred.UserName = NULL;
    FUNC1(0xdeadbeef);
    ret = FUNC5(&new_cred, 0);
    FUNC3(!ret, "CredWriteA succeeded\n");
    FUNC3(FUNC0() == ERROR_BAD_USERNAME, "got %u\n", FUNC0());
}