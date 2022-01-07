
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cAccDescr; TYPE_1__* rgAccDescr; } ;
struct TYPE_5__ {int AccessLocation; int pszAccessMethod; } ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef TYPE_2__ CERT_AUTHORITY_INFO_ACCESS ;


 int compareAltNameEntry (int *,int *) ;
 int ok (int,char*,int ,size_t,scalar_t__,...) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void compareAuthorityInfoAccess(LPCSTR header,
 const CERT_AUTHORITY_INFO_ACCESS *expected,
 const CERT_AUTHORITY_INFO_ACCESS *got)
{
    DWORD i;

    ok(expected->cAccDescr == got->cAccDescr,
     "%s: expected %d access descriptions, got %d\n", header,
     expected->cAccDescr, got->cAccDescr);
    for (i = 0; i < expected->cAccDescr; i++)
    {
        ok(!strcmp(expected->rgAccDescr[i].pszAccessMethod,
         got->rgAccDescr[i].pszAccessMethod), "%s[%d]: expected %s, got %s\n",
         header, i, expected->rgAccDescr[i].pszAccessMethod,
         got->rgAccDescr[i].pszAccessMethod);
        compareAltNameEntry(&expected->rgAccDescr[i].AccessLocation,
         &got->rgAccDescr[i].AccessLocation);
    }
}
