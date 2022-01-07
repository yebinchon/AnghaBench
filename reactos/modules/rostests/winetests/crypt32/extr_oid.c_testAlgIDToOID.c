
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algID; int oid; int altOid; } ;
typedef int * LPCSTR ;


 int ALG_CLASS_SIGNATURE ;
 int ALG_TYPE_ANY ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int * CertAlgIdToOID (int) ;
 int GetLastError () ;
 int SetLastError (int) ;
 TYPE_1__* algIDToOID ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,...) ;
 scalar_t__ strcmp (int *,int) ;

__attribute__((used)) static void testAlgIDToOID(void)
{
    int i;
    LPCSTR oid;


    SetLastError(0xdeadbeef);
    oid = CertAlgIdToOID(ALG_CLASS_SIGNATURE | ALG_TYPE_ANY | 80);
    ok(!oid && GetLastError() == 0xdeadbeef,
     "Didn't expect last error (%08x) to be set\n", GetLastError());
    for (i = 0; i < ARRAY_SIZE(algIDToOID); i++)
    {
        oid = CertAlgIdToOID(algIDToOID[i].algID);

        ok(oid != ((void*)0) || broken(!oid), "CertAlgIdToOID failed, expected %s\n", algIDToOID[i].oid);
        if (oid)
        {
            if (strcmp(oid, algIDToOID[i].oid))
            {
                if (algIDToOID[i].altOid)
                    ok(!strcmp(oid, algIDToOID[i].altOid),
                     "Expected %s or %s, got %s\n", algIDToOID[i].oid,
                     algIDToOID[i].altOid, oid);
                else
                {

                    ok(0, "Expected %s, got %s\n", algIDToOID[i].oid, oid);
                }
            }
            else
            {

                ok(1, "Expected %s, got %s\n", algIDToOID[i].oid, oid);
            }
        }
    }
}
