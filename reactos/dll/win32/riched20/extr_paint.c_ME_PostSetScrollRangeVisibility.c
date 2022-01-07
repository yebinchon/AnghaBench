
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fMask; scalar_t__ nMin; scalar_t__ nMax; scalar_t__ nPage; } ;
typedef TYPE_1__ SCROLLINFO ;
typedef int BOOL ;


 int SIF_DISABLENOSCROLL ;
 int TRUE ;
 scalar_t__ max (scalar_t__,int ) ;

__attribute__((used)) static BOOL ME_PostSetScrollRangeVisibility(SCROLLINFO *si)
{
  if (si->fMask & SIF_DISABLENOSCROLL)
    return TRUE;



  return si->nMin < si->nMax - max(si->nPage - 1, 0);
}
