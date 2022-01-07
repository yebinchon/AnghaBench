
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cRDN; int * rgRDN; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CERT_NAME_INFO ;


 int compareRDNs (int *,int *) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void compareNames(const CERT_NAME_INFO *expected,
 const CERT_NAME_INFO *got)
{
    ok(got->cRDN == expected->cRDN, "Expected %d RDNs, got %d\n",
     expected->cRDN, got->cRDN);
    if (got->cRDN)
    {
        DWORD i;

        for (i = 0; i < got->cRDN; i++)
            compareRDNs(&expected->rgRDN[i], &got->rgRDN[i]);
    }
}
