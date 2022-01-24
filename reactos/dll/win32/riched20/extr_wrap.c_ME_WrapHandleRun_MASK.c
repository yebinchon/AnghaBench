#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_14__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ x; int /*<<< orphan*/  y; } ;
struct TYPE_34__ {int len; int nFlags; scalar_t__ nWidth; TYPE_1__ pt; } ;
struct TYPE_30__ {TYPE_8__ run; } ;
struct TYPE_35__ {scalar_t__ type; struct TYPE_35__* next; TYPE_4__ member; } ;
struct TYPE_32__ {scalar_t__ x; int /*<<< orphan*/  y; } ;
struct TYPE_33__ {scalar_t__ nAvailWidth; TYPE_6__ pt; TYPE_9__* pLastSplittableRun; TYPE_9__* pRowStart; void* bOverflown; TYPE_14__* context; scalar_t__ bWordWrap; int /*<<< orphan*/  nFirstMargin; int /*<<< orphan*/  nLeftMargin; scalar_t__ nRow; TYPE_3__* pPara; } ;
struct TYPE_31__ {scalar_t__ x; } ;
struct TYPE_28__ {int /*<<< orphan*/  para; } ;
struct TYPE_29__ {TYPE_2__ member; } ;
struct TYPE_26__ {TYPE_5__ pt; } ;
typedef  TYPE_7__ ME_WrapContext ;
typedef  TYPE_8__ ME_Run ;
typedef  TYPE_9__ ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FALSE ; 
 int MERF_ENDPARA ; 
 int MERF_ENDROW ; 
 int MERF_ENDWHITE ; 
 int MERF_GRAPHICS ; 
 int MERF_SPLITTABLE ; 
 int MERF_STARTWHITE ; 
 int MERF_TAB ; 
 int MERF_WHITESPACE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,TYPE_9__*) ; 
 TYPE_9__* FUNC2 (TYPE_7__*,TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_9__*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ diRun ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_9__* FUNC9 (TYPE_7__*,TYPE_9__*,int) ; 

__attribute__((used)) static ME_DisplayItem *FUNC10(ME_WrapContext *wc, ME_DisplayItem *p)
{
  ME_DisplayItem *pp;
  ME_Run *run;
  int len;

  FUNC4(p->type == diRun);
  if (!wc->pRowStart)
    wc->pRowStart = p;
  run = &p->member.run;
  run->pt.x = wc->pt.x;
  run->pt.y = wc->pt.y;
  FUNC3(wc, p);
  len = run->len;

  if (wc->bOverflown) /* just skipping final whitespaces */
  {
    /* End paragraph run can't overflow to the next line by itself. */
    if (run->nFlags & MERF_ENDPARA)
      return p->next;

    if (run->nFlags & MERF_WHITESPACE) {
      wc->pt.x += run->nWidth;
      /* skip runs consisting of only whitespaces */
      return p->next;
    }

    if (run->nFlags & MERF_STARTWHITE) {
      /* try to split the run at the first non-white char */
      int black;
      black = FUNC6( FUNC7( run, 0 ), run->len, 0 );
      if (black) {
        wc->bOverflown = FALSE;
        pp = FUNC9(wc, p, black);
        FUNC5(wc->context, &wc->pPara->member.para,
                        wc->nRow ? wc->nLeftMargin : wc->nFirstMargin,
                        &pp->member.run);
        FUNC1(wc, pp);
        return pp;
      }
    }
    /* black run: the row goes from pRowStart to the previous run */
    FUNC1(wc, p);
    return p;
  }
  /* simply end the current row and move on to next one */
  if (run->nFlags & MERF_ENDROW)
  {
    p = p->next;
    FUNC1(wc, p);
    return p;
  }

  /* will current run fit? */
  if (wc->bWordWrap &&
      wc->pt.x + run->nWidth - wc->context->pt.x > wc->nAvailWidth)
  {
    int loc = wc->context->pt.x + wc->nAvailWidth - wc->pt.x;
    /* total white run or end para */
    if (run->nFlags & (MERF_WHITESPACE | MERF_ENDPARA)) {
      /* let the overflow logic handle it */
      wc->bOverflown = TRUE;
      return p;
    }
    /* TAB: we can split before */
    if (run->nFlags & MERF_TAB) {
      wc->bOverflown = TRUE;
      if (wc->pRowStart == p)
        /* Don't split before the start of the run, or we will get an
         * endless loop. */
        return p->next;
      else
        return p;
    }
    /* graphics: we can split before, if run's width is smaller than row's width */
    if ((run->nFlags & MERF_GRAPHICS) && run->nWidth <= wc->nAvailWidth) {
      wc->bOverflown = TRUE;
      return p;
    }
    /* can we separate out the last spaces ? (to use overflow logic later) */
    if (run->nFlags & MERF_ENDWHITE)
    {
      /* we aren't sure if it's *really* necessary, it's a good start however */
      int black = FUNC8( FUNC7( run, 0 ), len );
      FUNC9(wc, p, black);
      /* handle both parts again */
      return p;
    }
    /* determine the split point by backtracking */
    pp = FUNC2(wc, p, loc);
    if (pp == wc->pRowStart)
    {
      if (run->nFlags & MERF_STARTWHITE)
      {
          /* We had only spaces so far, so we must be on the first line of the
           * paragraph (or the first line after MERF_ENDROW forced the line
           * break within the paragraph), since no other lines of the paragraph
           * start with spaces. */

          /* The lines will only contain spaces, and the rest of the run will
           * overflow onto the next line. */
          wc->bOverflown = TRUE;
          return p;
      }
      /* Couldn't split the first run, possible because we have a large font
       * with a single character that caused an overflow.
       */
      wc->pt.x += run->nWidth;
      return p->next;
    }
    if (p != pp) /* found a suitable split point */
    {
      wc->bOverflown = TRUE;
      return pp;
    }
    /* we detected that it's best to split on start of this run */
    if (wc->bOverflown)
      return pp;
    FUNC0("failure!\n");
    /* not found anything - writing over margins is the only option left */
  }
  if ((run->nFlags & (MERF_SPLITTABLE | MERF_STARTWHITE))
    || ((run->nFlags & (MERF_GRAPHICS|MERF_TAB)) && (p != wc->pRowStart)))
  {
    wc->pLastSplittableRun = p;
  }
  wc->pt.x += run->nWidth;
  return p->next;
}