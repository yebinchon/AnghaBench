
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int member_0; int* member_1; int idLength; int ids; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ AsnObjectIdentifier ;


 scalar_t__ SnmpUtilOidNCmp (TYPE_1__*,TYPE_1__*,int) ;
 int memcpy (int ,int ,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SnmpUtilOidNCmp(void)
{
    INT ret;
    static UINT ids1[] = { 1, 2, 3, 4 };
    static UINT ids2[] = { 5, 6, 7, 8 };
    static AsnObjectIdentifier oid1 = { 4, ids1 };
    static AsnObjectIdentifier oid2 = { 4, ids2 };


    if(0)
    {
        ret = SnmpUtilOidNCmp(((void*)0), ((void*)0), 0);
        ok(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = SnmpUtilOidNCmp(((void*)0), ((void*)0), 1);
        ok(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = SnmpUtilOidNCmp(&oid1, ((void*)0), 0);
        ok(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = SnmpUtilOidNCmp(&oid1, ((void*)0), 1);
        ok(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = SnmpUtilOidNCmp(((void*)0), &oid2, 0);
        ok(!ret, "SnmpUtilOidNCmp succeeded\n");

        ret = SnmpUtilOidNCmp(((void*)0), &oid2, 1);
        ok(!ret, "SnmpUtilOidNCmp succeeded\n");
    }

    ret = SnmpUtilOidNCmp(&oid1, &oid1, 0);
    ok(!ret, "SnmpUtilOidNCmp failed\n");

    ret = SnmpUtilOidNCmp(&oid1, &oid1, 4);
    ok(!ret, "SnmpUtilOidNCmp failed\n");

    ret = SnmpUtilOidNCmp(&oid1, &oid2, 4);
    ok(ret < 0, "SnmpUtilOidNCmp failed: %d\n", ret);

    ret = SnmpUtilOidNCmp(&oid2, &oid1, 4);
    ok(ret > 0, "SnmpUtilOidNCmp failed: %d\n", ret);

    oid1.idLength = 3;
    memcpy(oid1.ids, oid2.ids, sizeof(UINT) * 4);
    ret = SnmpUtilOidNCmp(&oid1, &oid1, 4);
    ok(!ret, "SnmpUtilOidNCmp failed: %d\n", ret);
    ret = SnmpUtilOidNCmp(&oid2, &oid1, 4);
    ok(ret > 0, "SnmpUtilOidNCmp failed: %d\n", ret);
    ret = SnmpUtilOidNCmp(&oid1, &oid2, 4);
    ok(ret < 0, "SnmpUtilOidNCmp failed: %d\n", ret);

    ret = SnmpUtilOidNCmp(&oid1, &oid2, 2);
    ok(!ret, "SnmpUtilOidNCmp failed: %d\n", ret);
    ret = SnmpUtilOidNCmp(&oid2, &oid1, 2);
    ok(!ret, "SnmpUtilOidNCmp failed: %d\n", ret);
}
