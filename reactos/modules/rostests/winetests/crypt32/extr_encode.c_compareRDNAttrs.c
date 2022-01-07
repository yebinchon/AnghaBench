
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwValueType; scalar_t__* pszObjId; } ;
typedef TYPE_1__ CERT_RDN_ATTR ;
typedef int CERT_NAME_VALUE ;


 int compareNameValues (int const*,int const*) ;
 int ok (int,char*,scalar_t__*,...) ;
 int strcmp (scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void compareRDNAttrs(const CERT_RDN_ATTR *expected,
 const CERT_RDN_ATTR *got)
{
    if (expected->pszObjId && *expected->pszObjId)
    {
        ok(got->pszObjId != ((void*)0), "Expected OID %s, got NULL\n",
         expected->pszObjId);
        if (got->pszObjId)
        {
            ok(!strcmp(got->pszObjId, expected->pszObjId),
             "Got unexpected OID %s, expected %s\n", got->pszObjId,
             expected->pszObjId);
        }
    }
    compareNameValues((const CERT_NAME_VALUE *)&expected->dwValueType,
     (const CERT_NAME_VALUE *)&got->dwValueType);
}
