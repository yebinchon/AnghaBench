
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cAltEntry; int * rgAltEntry; } ;
typedef size_t DWORD ;
typedef TYPE_1__ CERT_ALT_NAME_INFO ;


 int compareAltNameEntry (int *,int *) ;
 size_t min (scalar_t__,scalar_t__) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void compareAltNameInfo(const CERT_ALT_NAME_INFO *expected,
 const CERT_ALT_NAME_INFO *got)
{
    DWORD i;

    ok(expected->cAltEntry == got->cAltEntry, "Expected %d entries, got %d\n",
     expected->cAltEntry, got->cAltEntry);
    for (i = 0; i < min(expected->cAltEntry, got->cAltEntry); i++)
        compareAltNameEntry(&expected->rgAltEntry[i], &got->rgAltEntry[i]);
}
