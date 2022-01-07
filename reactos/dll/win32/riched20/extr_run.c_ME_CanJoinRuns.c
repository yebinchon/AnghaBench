
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nFlags; scalar_t__ style; } ;
typedef TYPE_1__ ME_Run ;
typedef int BOOL ;


 int FALSE ;
 int MERF_NOJOIN ;
 int MERF_STYLEFLAGS ;
 int TRUE ;

BOOL ME_CanJoinRuns(const ME_Run *run1, const ME_Run *run2)
{
  if ((run1->nFlags | run2->nFlags) & MERF_NOJOIN)
    return FALSE;
  if (run1->style != run2->style)
    return FALSE;
  if ((run1->nFlags & MERF_STYLEFLAGS) != (run2->nFlags & MERF_STYLEFLAGS))
    return FALSE;
  return TRUE;
}
