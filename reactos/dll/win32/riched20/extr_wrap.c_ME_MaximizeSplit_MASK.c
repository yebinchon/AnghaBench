#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  x; } ;
struct TYPE_19__ {int nFlags; int len; TYPE_1__ pt; scalar_t__ nWidth; } ;
struct TYPE_16__ {TYPE_8__ run; } ;
struct TYPE_18__ {TYPE_2__ member; } ;
struct TYPE_17__ {TYPE_1__ pt; int /*<<< orphan*/  bOverflown; TYPE_4__* pRowStart; } ;
typedef  TYPE_3__ ME_WrapContext ;
typedef  TYPE_4__ ME_DisplayItem ;

/* Variables and functions */
 int MERF_ENDWHITE ; 
 int MERF_WHITESPACE ; 
 TYPE_4__* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  diRun ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,TYPE_4__*,int) ; 

__attribute__((used)) static ME_DisplayItem *FUNC6(ME_WrapContext *wc, ME_DisplayItem *p, int i)
{
  ME_DisplayItem *pp, *piter = p;
  int j;
  if (!i)
    return NULL;
  j = FUNC4( FUNC3( &p->member.run, 0 ), i);
  if (j>0) {
    pp = FUNC5(wc, piter, j);
    wc->pt.x += piter->member.run.nWidth;
    return pp;
  }
  else
  {
    pp = piter;
    /* omit all spaces before split point */
    while(piter != wc->pRowStart)
    {
      piter = FUNC0(piter, diRun);
      if (piter->member.run.nFlags & MERF_WHITESPACE)
      {
        pp = piter;
        continue;
      }
      if (piter->member.run.nFlags & MERF_ENDWHITE)
      {
        i = FUNC4( FUNC3( &piter->member.run, 0 ),
                                         piter->member.run.len );
        pp = FUNC5(wc, piter, i);
        wc->pt = pp->member.run.pt;
        return pp;
      }
      /* this run is the end of spaces, so the run edge is a good point to split */
      wc->pt = pp->member.run.pt;
      wc->bOverflown = TRUE;
      FUNC1("Split point is: %s|%s\n", FUNC2( &piter->member.run ), FUNC2( &pp->member.run ));
      return pp;
    }
    wc->pt = piter->member.run.pt;
    return piter;
  }
}