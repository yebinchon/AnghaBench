
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int member_0; int* member_1; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ AsnObjectIdentifier ;


 scalar_t__ SnmpUtilOidCmp (TYPE_1__*,TYPE_1__*) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_SnmpUtilOidCmp(void)
{
    INT ret;
    static UINT ids1[] = { 1, 2, 3 };
    static UINT ids2[] = { 1, 2, 3, 4 };
    static AsnObjectIdentifier oid1 = { 3, ids1 };
    static AsnObjectIdentifier oid2 = { 4, ids2 };

    if (0) {
    ret = SnmpUtilOidCmp(((void*)0), ((void*)0));
    ok(!ret, "SnmpUtilOidCmp succeeded\n");

    ret = SnmpUtilOidCmp(&oid1, ((void*)0));
    ok(!ret, "SnmpUtilOidCmp succeeded\n");

    ret = SnmpUtilOidCmp(((void*)0), &oid2);
    ok(!ret, "SnmpUtilOidCmp succeeded\n");
    }

    ret = SnmpUtilOidCmp(&oid2, &oid1);
    ok(ret > 0, "SnmpUtilOidCmp failed\n");

    ret = SnmpUtilOidCmp(&oid1, &oid2);
    ok(ret < 0, "SnmpUtilOidCmp failed\n");
}
