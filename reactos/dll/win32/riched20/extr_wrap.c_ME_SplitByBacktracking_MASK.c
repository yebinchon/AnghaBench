#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  editor; } ;
struct TYPE_21__ {int len; int nFlags; int /*<<< orphan*/  pt; } ;
struct TYPE_19__ {TYPE_3__ run; } ;
struct TYPE_22__ {TYPE_1__ member; } ;
struct TYPE_20__ {int /*<<< orphan*/  bOverflown; TYPE_4__* pRowStart; TYPE_4__* pLastSplittableRun; int /*<<< orphan*/  pt; TYPE_9__* context; } ;
typedef  TYPE_2__ ME_WrapContext ;
typedef  TYPE_3__ ME_Run ;
typedef  TYPE_4__ ME_DisplayItem ;

/* Variables and functions */
 int MERF_GRAPHICS ; 
 int MERF_SPLITTABLE ; 
 int MERF_TAB ; 
 TYPE_4__* FUNC0 (TYPE_2__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_9__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC9 (TYPE_2__*,TYPE_4__*,int) ; 

__attribute__((used)) static ME_DisplayItem *FUNC10(ME_WrapContext *wc, ME_DisplayItem *p, int loc)
{
  ME_DisplayItem *piter = p, *pp;
  int i, idesp, len;
  ME_Run *run = &p->member.run;

  idesp = i = FUNC5( wc->context, loc, run );
  len = run->len;
  FUNC3(len>0);
  FUNC3(i<len);
  if (i) {
    /* don't split words */
    i = FUNC8( FUNC6( run, 0 ), i );
    pp = FUNC0(wc, p, i);
    if (pp)
      return pp;
  }
  FUNC2("Must backtrack to split at: %s\n", FUNC4( &p->member.run ));
  if (wc->pLastSplittableRun)
  {
    if (wc->pLastSplittableRun->member.run.nFlags & (MERF_GRAPHICS|MERF_TAB))
    {
      wc->pt = wc->pLastSplittableRun->member.run.pt;
      return wc->pLastSplittableRun;
    }
    else if (wc->pLastSplittableRun->member.run.nFlags & MERF_SPLITTABLE)
    {
      /* the following two lines are just to check if we forgot to call UpdateRunFlags earlier,
         they serve no other purpose */
      FUNC1(wc->context->editor, run);
      FUNC3((wc->pLastSplittableRun->member.run.nFlags & MERF_SPLITTABLE));

      piter = wc->pLastSplittableRun;
      run = &piter->member.run;
      len = run->len;
      /* don't split words */
      i = FUNC8( FUNC6( run, 0 ), len );
      if (i == len)
        i = FUNC7( FUNC6( run, 0 ), len );
      if (i) {
        ME_DisplayItem *piter2 = FUNC9(wc, piter, i);
        wc->pt = piter2->member.run.pt;
        return piter2;
      }
      /* splittable = must have whitespaces */
      FUNC3(0 == "Splittable, but no whitespaces");
    }
    else
    {
      /* restart from the first run beginning with spaces */
      wc->pt = wc->pLastSplittableRun->member.run.pt;
      return wc->pLastSplittableRun;
    }
  }
  FUNC2("Backtracking failed, trying desperate: %s\n", FUNC4( &p->member.run ));
  /* OK, no better idea, so assume we MAY split words if we can split at all*/
  if (idesp)
    return FUNC9(wc, piter, idesp);
  else
  if (wc->pRowStart && piter != wc->pRowStart)
  {
    /* don't need to break current run, because it's possible to split
       before this run */
    wc->bOverflown = TRUE;
    return piter;
  }
  else
  {
    /* split point inside first character - no choice but split after that char */
    if (len != 1) {
      /* the run is more than 1 char, so we may split */
      return FUNC9(wc, piter, 1);
    }
    /* the run is one char, can't split it */
    return piter;
  }
}