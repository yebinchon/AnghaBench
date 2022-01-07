
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cRDNAttr; int * rgRDNAttr; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CERT_RDN ;


 int compareRDNAttrs (int *,int *) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void compareRDNs(const CERT_RDN *expected, const CERT_RDN *got)
{
    ok(got->cRDNAttr == expected->cRDNAttr,
     "Expected %d RDN attrs, got %d\n", expected->cRDNAttr, got->cRDNAttr);
    if (got->cRDNAttr)
    {
        DWORD i;

        for (i = 0; i < got->cRDNAttr; i++)
            compareRDNAttrs(&expected->rgRDNAttr[i], &got->rgRDNAttr[i]);
    }
}
