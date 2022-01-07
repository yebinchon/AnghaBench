
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int cFormatTags; TYPE_1__* aFormatTag; } ;
typedef TYPE_2__ WINE_ACMDRIVERID ;
struct TYPE_4__ {scalar_t__ dwFormatTag; } ;
typedef unsigned int* LPDWORD ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL MSACM_FindFormatTagInCache(const WINE_ACMDRIVERID* padid, DWORD fmtTag, LPDWORD idx)
{
    unsigned i;

    for (i = 0; i < padid->cFormatTags; i++) {
 if (padid->aFormatTag[i].dwFormatTag == fmtTag) {
     if (idx) *idx = i;
     return TRUE;
 }
    }
    return FALSE;
}
