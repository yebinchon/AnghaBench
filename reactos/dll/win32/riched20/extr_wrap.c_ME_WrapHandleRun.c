
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_14__ ;


struct TYPE_27__ {scalar_t__ x; int y; } ;
struct TYPE_34__ {int len; int nFlags; scalar_t__ nWidth; TYPE_1__ pt; } ;
struct TYPE_30__ {TYPE_8__ run; } ;
struct TYPE_35__ {scalar_t__ type; struct TYPE_35__* next; TYPE_4__ member; } ;
struct TYPE_32__ {scalar_t__ x; int y; } ;
struct TYPE_33__ {scalar_t__ nAvailWidth; TYPE_6__ pt; TYPE_9__* pLastSplittableRun; TYPE_9__* pRowStart; void* bOverflown; TYPE_14__* context; scalar_t__ bWordWrap; int nFirstMargin; int nLeftMargin; scalar_t__ nRow; TYPE_3__* pPara; } ;
struct TYPE_31__ {scalar_t__ x; } ;
struct TYPE_28__ {int para; } ;
struct TYPE_29__ {TYPE_2__ member; } ;
struct TYPE_26__ {TYPE_5__ pt; } ;
typedef TYPE_7__ ME_WrapContext ;
typedef TYPE_8__ ME_Run ;
typedef TYPE_9__ ME_DisplayItem ;


 int ERR (char*) ;
 void* FALSE ;
 int MERF_ENDPARA ;
 int MERF_ENDROW ;
 int MERF_ENDWHITE ;
 int MERF_GRAPHICS ;
 int MERF_SPLITTABLE ;
 int MERF_STARTWHITE ;
 int MERF_TAB ;
 int MERF_WHITESPACE ;
 int ME_InsertRowStart (TYPE_7__*,TYPE_9__*) ;
 TYPE_9__* ME_SplitByBacktracking (TYPE_7__*,TYPE_9__*,int) ;
 int ME_WrapSizeRun (TYPE_7__*,TYPE_9__*) ;
 void* TRUE ;
 int assert (int) ;
 int calc_run_extent (TYPE_14__*,int *,int ,TYPE_8__*) ;
 scalar_t__ diRun ;
 int find_non_whitespace (int ,int,int ) ;
 int get_text (TYPE_8__*,int ) ;
 int reverse_find_non_whitespace (int ,int) ;
 TYPE_9__* split_run_extents (TYPE_7__*,TYPE_9__*,int) ;

__attribute__((used)) static ME_DisplayItem *ME_WrapHandleRun(ME_WrapContext *wc, ME_DisplayItem *p)
{
  ME_DisplayItem *pp;
  ME_Run *run;
  int len;

  assert(p->type == diRun);
  if (!wc->pRowStart)
    wc->pRowStart = p;
  run = &p->member.run;
  run->pt.x = wc->pt.x;
  run->pt.y = wc->pt.y;
  ME_WrapSizeRun(wc, p);
  len = run->len;

  if (wc->bOverflown)
  {

    if (run->nFlags & MERF_ENDPARA)
      return p->next;

    if (run->nFlags & MERF_WHITESPACE) {
      wc->pt.x += run->nWidth;

      return p->next;
    }

    if (run->nFlags & MERF_STARTWHITE) {

      int black;
      black = find_non_whitespace( get_text( run, 0 ), run->len, 0 );
      if (black) {
        wc->bOverflown = FALSE;
        pp = split_run_extents(wc, p, black);
        calc_run_extent(wc->context, &wc->pPara->member.para,
                        wc->nRow ? wc->nLeftMargin : wc->nFirstMargin,
                        &pp->member.run);
        ME_InsertRowStart(wc, pp);
        return pp;
      }
    }

    ME_InsertRowStart(wc, p);
    return p;
  }

  if (run->nFlags & MERF_ENDROW)
  {
    p = p->next;
    ME_InsertRowStart(wc, p);
    return p;
  }


  if (wc->bWordWrap &&
      wc->pt.x + run->nWidth - wc->context->pt.x > wc->nAvailWidth)
  {
    int loc = wc->context->pt.x + wc->nAvailWidth - wc->pt.x;

    if (run->nFlags & (MERF_WHITESPACE | MERF_ENDPARA)) {

      wc->bOverflown = TRUE;
      return p;
    }

    if (run->nFlags & MERF_TAB) {
      wc->bOverflown = TRUE;
      if (wc->pRowStart == p)


        return p->next;
      else
        return p;
    }

    if ((run->nFlags & MERF_GRAPHICS) && run->nWidth <= wc->nAvailWidth) {
      wc->bOverflown = TRUE;
      return p;
    }

    if (run->nFlags & MERF_ENDWHITE)
    {

      int black = reverse_find_non_whitespace( get_text( run, 0 ), len );
      split_run_extents(wc, p, black);

      return p;
    }

    pp = ME_SplitByBacktracking(wc, p, loc);
    if (pp == wc->pRowStart)
    {
      if (run->nFlags & MERF_STARTWHITE)
      {







          wc->bOverflown = TRUE;
          return p;
      }



      wc->pt.x += run->nWidth;
      return p->next;
    }
    if (p != pp)
    {
      wc->bOverflown = TRUE;
      return pp;
    }

    if (wc->bOverflown)
      return pp;
    ERR("failure!\n");

  }
  if ((run->nFlags & (MERF_SPLITTABLE | MERF_STARTWHITE))
    || ((run->nFlags & (MERF_GRAPHICS|MERF_TAB)) && (p != wc->pRowStart)))
  {
    wc->pLastSplittableRun = p;
  }
  wc->pt.x += run->nWidth;
  return p->next;
}
