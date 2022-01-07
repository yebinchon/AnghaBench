
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid ;
typedef int GUID ;


 int GUID_DATABASE_DRIVERS ;
 int GUID_DATABASE_MSI ;
 int GUID_DATABASE_SHIM ;
 int GUID_NULL ;
 int IsEqualGUID (int *,int *) ;
 int memset (int *,int ,int) ;
 int ok (scalar_t__,char*,...) ;
 int pSdbGetStandardDatabaseGUID (int,int *) ;
 scalar_t__ pSdbIsNullGUID (int *) ;
 int test_UserAssist ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void test_GuidFunctions(void)
{
    GUID guid;
    ok(pSdbIsNullGUID(&GUID_NULL), "expected GUID_NULL to be recognized as NULL GUID\n");
    ok(pSdbIsNullGUID(((void*)0)), "expected NULL to be recognized as NULL GUID\n");
    ok(pSdbIsNullGUID(&test_UserAssist) == 0, "expected a set GUID not to be recognized as NULL GUID\n");

    memset(&guid, 0, sizeof(guid));
    ok(pSdbGetStandardDatabaseGUID(0, &guid) == 0,"Expected SdbGetStandardDatabaseGUID to fail\n");
    ok(IsEqualGUID(&GUID_NULL, &guid), "Expected guid not to be changed\n");

    ok(pSdbGetStandardDatabaseGUID(0x80020000, ((void*)0)),"Expected SdbGetStandardDatabaseGUID to succeed\n");

    memset(&guid, 0, sizeof(guid));
    ok(pSdbGetStandardDatabaseGUID(0x80020000, &guid),"Expected SdbGetStandardDatabaseGUID to succeed\n");
    ok(IsEqualGUID(&GUID_DATABASE_MSI, &guid), "Expected guid to equal GUID_DATABASE_MSI, was: %s\n", wine_dbgstr_guid(&guid));

    memset(&guid, 0, sizeof(guid));
    ok(pSdbGetStandardDatabaseGUID(0x80030000, &guid),"Expected SdbGetStandardDatabaseGUID to succeed\n");
    ok(IsEqualGUID(&GUID_DATABASE_SHIM, &guid), "Expected guid to equal GUID_DATABASE_SHIM, was: %s\n", wine_dbgstr_guid(&guid));

    memset(&guid, 0, sizeof(guid));
    ok(pSdbGetStandardDatabaseGUID(0x80040000, &guid),"Expected SdbGetStandardDatabaseGUID to succeed\n");
    ok(IsEqualGUID(&GUID_DATABASE_DRIVERS, &guid), "Expected guid to equal GUID_DATABASE_DRIVERS, was: %s\n", wine_dbgstr_guid(&guid));
}
