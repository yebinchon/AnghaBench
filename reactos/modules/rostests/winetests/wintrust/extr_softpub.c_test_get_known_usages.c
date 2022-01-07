
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbSize; int dwGroupId; } ;
typedef TYPE_1__* PCCRYPT_OID_INFO ;
typedef int LPCWSTR ;
typedef int CRYPT_OID_INFO ;
typedef int BOOL ;


 int CRYPT_ENHKEY_USAGE_OID_GROUP_ID ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int pWTHelperGetKnownUsages (int,TYPE_1__***) ;
 int skip (char*) ;

__attribute__((used)) static void test_get_known_usages(void)
{
    BOOL ret;
    PCCRYPT_OID_INFO *usages;

    if (!pWTHelperGetKnownUsages)
    {
        skip("missing WTHelperGetKnownUsages\n");
        return;
    }
    SetLastError(0xdeadbeef);
    ret = pWTHelperGetKnownUsages(0, ((void*)0));
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = pWTHelperGetKnownUsages(1, ((void*)0));
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = pWTHelperGetKnownUsages(0, &usages);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());



    SetLastError(0xdeadbeef);
    usages = ((void*)0);
    ret = pWTHelperGetKnownUsages(1, &usages);
    ok(ret, "WTHelperGetKnownUsages failed: %d\n", GetLastError());
    ok(usages != ((void*)0), "expected a pointer\n");
    if (ret && usages)
    {
        PCCRYPT_OID_INFO *ptr;




        for (ptr = usages; *ptr; ptr++)
        {
            ok((*ptr)->cbSize == sizeof(CRYPT_OID_INFO) ||
             (*ptr)->cbSize == (sizeof(CRYPT_OID_INFO) + 2 * sizeof(LPCWSTR)),
             "unexpected size %d\n", (*ptr)->cbSize);

            ok((*ptr)->dwGroupId == CRYPT_ENHKEY_USAGE_OID_GROUP_ID,
             "expected group CRYPT_ENHKEY_USAGE_OID_GROUP_ID, got %d\n",
             (*ptr)->dwGroupId);
        }
    }


    SetLastError(0xdeadbeef);
    ret = pWTHelperGetKnownUsages(2, &usages);
    ok(ret, "WTHelperGetKnownUsages failed: %d\n", GetLastError());
    ok(usages == ((void*)0), "expected pointer to be cleared\n");
    SetLastError(0xdeadbeef);
    usages = ((void*)0);
    ret = pWTHelperGetKnownUsages(2, &usages);
    ok(ret, "WTHelperGetKnownUsages failed: %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = pWTHelperGetKnownUsages(2, ((void*)0));
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", GetLastError());
}
