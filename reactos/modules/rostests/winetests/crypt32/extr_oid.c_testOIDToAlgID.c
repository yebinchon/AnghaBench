
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* oid; scalar_t__ algID; scalar_t__ altAlgID; } ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ CertOIDToAlgId (char*) ;
 TYPE_1__* oidToAlgID ;
 int ok (int,char*,scalar_t__,...) ;

__attribute__((used)) static void testOIDToAlgID(void)
{
    int i;
    DWORD alg;


    alg = CertOIDToAlgId("1.2.3");
    ok(!alg, "Expected failure, got %d\n", alg);

    for (i = 0; i < ARRAY_SIZE(oidToAlgID); i++)
    {
        alg = CertOIDToAlgId(oidToAlgID[i].oid);
        ok(alg == oidToAlgID[i].algID || (oidToAlgID[i].altAlgID && alg == oidToAlgID[i].altAlgID),
         "Expected %d, got %d\n", oidToAlgID[i].algID, alg);
    }
}
