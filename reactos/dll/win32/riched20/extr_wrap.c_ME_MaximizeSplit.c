
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int x; } ;
struct TYPE_19__ {int nFlags; int len; TYPE_1__ pt; scalar_t__ nWidth; } ;
struct TYPE_16__ {TYPE_8__ run; } ;
struct TYPE_18__ {TYPE_2__ member; } ;
struct TYPE_17__ {TYPE_1__ pt; int bOverflown; TYPE_4__* pRowStart; } ;
typedef TYPE_3__ ME_WrapContext ;
typedef TYPE_4__ ME_DisplayItem ;


 int MERF_ENDWHITE ;
 int MERF_WHITESPACE ;
 TYPE_4__* ME_FindItemBack (TYPE_4__*,int ) ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_run (TYPE_8__*) ;
 int diRun ;
 int get_text (TYPE_8__*,int ) ;
 int reverse_find_non_whitespace (int ,int) ;
 TYPE_4__* split_run_extents (TYPE_3__*,TYPE_4__*,int) ;

__attribute__((used)) static ME_DisplayItem *ME_MaximizeSplit(ME_WrapContext *wc, ME_DisplayItem *p, int i)
{
  ME_DisplayItem *pp, *piter = p;
  int j;
  if (!i)
    return ((void*)0);
  j = reverse_find_non_whitespace( get_text( &p->member.run, 0 ), i);
  if (j>0) {
    pp = split_run_extents(wc, piter, j);
    wc->pt.x += piter->member.run.nWidth;
    return pp;
  }
  else
  {
    pp = piter;

    while(piter != wc->pRowStart)
    {
      piter = ME_FindItemBack(piter, diRun);
      if (piter->member.run.nFlags & MERF_WHITESPACE)
      {
        pp = piter;
        continue;
      }
      if (piter->member.run.nFlags & MERF_ENDWHITE)
      {
        i = reverse_find_non_whitespace( get_text( &piter->member.run, 0 ),
                                         piter->member.run.len );
        pp = split_run_extents(wc, piter, i);
        wc->pt = pp->member.run.pt;
        return pp;
      }

      wc->pt = pp->member.run.pt;
      wc->bOverflown = TRUE;
      TRACE("Split point is: %s|%s\n", debugstr_run( &piter->member.run ), debugstr_run( &pp->member.run ));
      return pp;
    }
    wc->pt = piter->member.run.pt;
    return piter;
  }
}
