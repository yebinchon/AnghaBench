
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_23__ {int editor; } ;
struct TYPE_21__ {int len; int nFlags; int pt; } ;
struct TYPE_19__ {TYPE_3__ run; } ;
struct TYPE_22__ {TYPE_1__ member; } ;
struct TYPE_20__ {int bOverflown; TYPE_4__* pRowStart; TYPE_4__* pLastSplittableRun; int pt; TYPE_9__* context; } ;
typedef TYPE_2__ ME_WrapContext ;
typedef TYPE_3__ ME_Run ;
typedef TYPE_4__ ME_DisplayItem ;


 int MERF_GRAPHICS ;
 int MERF_SPLITTABLE ;
 int MERF_TAB ;
 TYPE_4__* ME_MaximizeSplit (TYPE_2__*,TYPE_4__*,int) ;
 int ME_UpdateRunFlags (int ,TYPE_3__*) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int assert (int) ;
 int debugstr_run (TYPE_3__*) ;
 int find_split_point (TYPE_9__*,int,TYPE_3__*) ;
 int get_text (TYPE_3__*,int ) ;
 int reverse_find_non_whitespace (int ,int) ;
 int reverse_find_whitespace (int ,int) ;
 TYPE_4__* split_run_extents (TYPE_2__*,TYPE_4__*,int) ;

__attribute__((used)) static ME_DisplayItem *ME_SplitByBacktracking(ME_WrapContext *wc, ME_DisplayItem *p, int loc)
{
  ME_DisplayItem *piter = p, *pp;
  int i, idesp, len;
  ME_Run *run = &p->member.run;

  idesp = i = find_split_point( wc->context, loc, run );
  len = run->len;
  assert(len>0);
  assert(i<len);
  if (i) {

    i = reverse_find_whitespace( get_text( run, 0 ), i );
    pp = ME_MaximizeSplit(wc, p, i);
    if (pp)
      return pp;
  }
  TRACE("Must backtrack to split at: %s\n", debugstr_run( &p->member.run ));
  if (wc->pLastSplittableRun)
  {
    if (wc->pLastSplittableRun->member.run.nFlags & (MERF_GRAPHICS|MERF_TAB))
    {
      wc->pt = wc->pLastSplittableRun->member.run.pt;
      return wc->pLastSplittableRun;
    }
    else if (wc->pLastSplittableRun->member.run.nFlags & MERF_SPLITTABLE)
    {


      ME_UpdateRunFlags(wc->context->editor, run);
      assert((wc->pLastSplittableRun->member.run.nFlags & MERF_SPLITTABLE));

      piter = wc->pLastSplittableRun;
      run = &piter->member.run;
      len = run->len;

      i = reverse_find_whitespace( get_text( run, 0 ), len );
      if (i == len)
        i = reverse_find_non_whitespace( get_text( run, 0 ), len );
      if (i) {
        ME_DisplayItem *piter2 = split_run_extents(wc, piter, i);
        wc->pt = piter2->member.run.pt;
        return piter2;
      }

      assert(0 == "Splittable, but no whitespaces");
    }
    else
    {

      wc->pt = wc->pLastSplittableRun->member.run.pt;
      return wc->pLastSplittableRun;
    }
  }
  TRACE("Backtracking failed, trying desperate: %s\n", debugstr_run( &p->member.run ));

  if (idesp)
    return split_run_extents(wc, piter, idesp);
  else
  if (wc->pRowStart && piter != wc->pRowStart)
  {


    wc->bOverflown = TRUE;
    return piter;
  }
  else
  {

    if (len != 1) {

      return split_run_extents(wc, piter, 1);
    }

    return piter;
  }
}
