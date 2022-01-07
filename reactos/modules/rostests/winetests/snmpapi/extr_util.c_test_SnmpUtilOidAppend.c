
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int member_0; int* member_1; int idLength; int* ids; } ;
typedef int INT ;
typedef TYPE_1__ AsnObjectIdentifier ;


 int* SnmpUtilMemAlloc (int) ;
 int SnmpUtilOidAppend (TYPE_1__*,TYPE_1__*) ;
 int SnmpUtilOidFree (TYPE_1__*) ;
 int memcmp (int*,int*,int) ;
 int ok (int,char*) ;

__attribute__((used)) static void test_SnmpUtilOidAppend(void)
{
    INT ret;
    UINT *ids1;
    static UINT ids2[] = { 4, 5, 6 };
    static AsnObjectIdentifier oid1;
    static AsnObjectIdentifier oid2 = { 3, ids2 };

    ids1 = SnmpUtilMemAlloc(3 * sizeof(UINT));
    ids1[0] = 1;
    ids1[1] = 2;
    ids1[2] = 3;

    oid1.idLength = 3;
    oid1.ids = ids1;


    if(0)
    {
        ret = SnmpUtilOidAppend(((void*)0), ((void*)0));
        ok(!ret, "SnmpUtilOidAppend succeeded\n");

        ret = SnmpUtilOidAppend(&oid1, ((void*)0));
        ok(ret, "SnmpUtilOidAppend failed\n");

        ret = SnmpUtilOidAppend(((void*)0), &oid2);
        ok(!ret, "SnmpUtilOidAppend succeeded\n");
    }

    ret = SnmpUtilOidAppend(&oid1, &oid2);
    ok(ret, "SnmpUtilOidAppend failed\n");
    ok(oid1.idLength == 6, "SnmpUtilOidAppend failed\n");
    ok(!memcmp(&oid1.ids[3], ids2, 3 * sizeof(UINT)),
       "SnmpUtilOidAppend failed\n");

    SnmpUtilOidFree(&oid1);
}
