
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cCapability; TYPE_2__* rgCapability; } ;
struct TYPE_6__ {scalar_t__ cbData; int pbData; } ;
struct TYPE_7__ {TYPE_1__ Parameters; int pszObjId; } ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef TYPE_3__ CRYPT_SMIME_CAPABILITIES ;


 int memcmp (int ,int ,scalar_t__) ;
 int ok (int,char*,int ,size_t,...) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void compareSMimeCapabilities(LPCSTR header,
 const CRYPT_SMIME_CAPABILITIES *expected, const CRYPT_SMIME_CAPABILITIES *got)
{
    DWORD i;

    ok(got->cCapability == expected->cCapability,
     "%s: expected %d capabilities, got %d\n", header, expected->cCapability,
     got->cCapability);
    for (i = 0; i < expected->cCapability; i++)
    {
        ok(!strcmp(expected->rgCapability[i].pszObjId,
         got->rgCapability[i].pszObjId), "%s[%d]: expected %s, got %s\n",
         header, i, expected->rgCapability[i].pszObjId,
         got->rgCapability[i].pszObjId);
        ok(expected->rgCapability[i].Parameters.cbData ==
         got->rgCapability[i].Parameters.cbData,
         "%s[%d]: expected %d bytes, got %d\n", header, i,
         expected->rgCapability[i].Parameters.cbData,
         got->rgCapability[i].Parameters.cbData);
        if (expected->rgCapability[i].Parameters.cbData)
            ok(!memcmp(expected->rgCapability[i].Parameters.pbData,
             got->rgCapability[i].Parameters.pbData,
             expected->rgCapability[i].Parameters.cbData),
             "%s[%d]: unexpected value\n", header, i);
    }
}
