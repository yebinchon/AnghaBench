
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* TargetName; char* Comment; char* UserName; void* Type; int Persist; int * TargetAlias; int * Attributes; scalar_t__ AttributeCount; int * CredentialBlob; scalar_t__ CredentialBlobSize; scalar_t__ Flags; } ;
typedef TYPE_1__ CREDENTIALA ;
typedef int BOOL ;


 int CRED_PERSIST_ENTERPRISE ;
 int CRED_PERSIST_LOCAL_MACHINE ;
 int CRED_PERSIST_SESSION ;
 void* CRED_TYPE_DOMAIN_PASSWORD ;
 void* CRED_TYPE_GENERIC ;
 scalar_t__ ERROR_BAD_USERNAME ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ ERROR_NO_SUCH_LOGON_SESSION ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 scalar_t__ TEST_TARGET_NAME ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pCredDeleteA (scalar_t__,void*,int ) ;
 int pCredWriteA (TYPE_1__*,int ) ;

__attribute__((used)) static void test_CredWriteA(void)
{
    CREDENTIALA new_cred;
    BOOL ret;

    SetLastError(0xdeadbeef);
    ret = pCredWriteA(((void*)0), 0);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
        "CredWriteA should have failed with ERROR_INVALID_PARAMETER instead of %d\n",
        GetLastError());

    new_cred.Flags = 0;
    new_cred.Type = CRED_TYPE_GENERIC;
    new_cred.TargetName = ((void*)0);
    new_cred.Comment = (char *)"Comment";
    new_cred.CredentialBlobSize = 0;
    new_cred.CredentialBlob = ((void*)0);
    new_cred.Persist = CRED_PERSIST_ENTERPRISE;
    new_cred.AttributeCount = 0;
    new_cred.Attributes = ((void*)0);
    new_cred.TargetAlias = ((void*)0);
    new_cred.UserName = (char *)"winetest";

    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
        "CredWriteA should have failed with ERROR_INVALID_PARAMETER instead of %d\n",
        GetLastError());

    new_cred.TargetName = (char *)TEST_TARGET_NAME;
    new_cred.Type = CRED_TYPE_DOMAIN_PASSWORD;

    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    if (ret)
    {
        ok(GetLastError() == ERROR_SUCCESS ||
           GetLastError() == ERROR_IO_PENDING,
           "Expected ERROR_IO_PENDING, got %d\n", GetLastError());
    }
    else
    {
        ok(GetLastError() == ERROR_BAD_USERNAME ||
           GetLastError() == ERROR_NO_SUCH_LOGON_SESSION,
           "CredWrite with username without domain should return ERROR_BAD_USERNAME"
           "or ERROR_NO_SUCH_LOGON_SESSION not %d\n", GetLastError());
    }

    new_cred.UserName = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    ok(!ret && GetLastError() == ERROR_BAD_USERNAME,
        "CredWriteA with NULL username should have failed with ERROR_BAD_USERNAME instead of %d\n",
        GetLastError());

    new_cred.UserName = (char *)"winetest";
    new_cred.Persist = CRED_PERSIST_LOCAL_MACHINE;
    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    ok(ret || broken(!ret), "CredWriteA failed with error %u\n", GetLastError());
    if (ret)
    {
        ret = pCredDeleteA(TEST_TARGET_NAME, CRED_TYPE_DOMAIN_PASSWORD, 0);
        ok(ret, "CredDeleteA failed with error %u\n", GetLastError());
    }
    new_cred.Type = CRED_TYPE_GENERIC;
    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    ok(ret || broken(!ret), "CredWriteA failed with error %u\n", GetLastError());
    if (ret)
    {
        ret = pCredDeleteA(TEST_TARGET_NAME, CRED_TYPE_GENERIC, 0);
        ok(ret, "CredDeleteA failed with error %u\n", GetLastError());
    }
    new_cred.Persist = CRED_PERSIST_SESSION;
    ret = pCredWriteA(&new_cred, 0);
    ok(ret, "CredWriteA failed with error %u\n", GetLastError());

    ret = pCredDeleteA(TEST_TARGET_NAME, CRED_TYPE_GENERIC, 0);
    ok(ret, "CredDeleteA failed with error %u\n", GetLastError());

    new_cred.Type = CRED_TYPE_DOMAIN_PASSWORD;
    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    ok(ret || broken(!ret), "CredWriteA failed with error %u\n", GetLastError());
    if (ret)
    {
        ret = pCredDeleteA(TEST_TARGET_NAME, CRED_TYPE_DOMAIN_PASSWORD, 0);
        ok(ret, "CredDeleteA failed with error %u\n", GetLastError());
    }
    new_cred.UserName = ((void*)0);
    SetLastError(0xdeadbeef);
    ret = pCredWriteA(&new_cred, 0);
    ok(!ret, "CredWriteA succeeded\n");
    ok(GetLastError() == ERROR_BAD_USERNAME, "got %u\n", GetLastError());
}
