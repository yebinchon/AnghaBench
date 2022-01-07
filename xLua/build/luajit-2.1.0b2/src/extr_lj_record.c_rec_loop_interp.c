
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nins; int traceno; } ;
struct TYPE_8__ {scalar_t__ parent; scalar_t__ exitno; scalar_t__ framedepth; scalar_t__ retdepth; int loopref; scalar_t__ loopunroll; TYPE_1__ cur; int const* startpc; } ;
typedef TYPE_2__ jit_State ;
typedef scalar_t__ LoopEvent ;
typedef int BCIns ;


 int LJ_TRERR_LINNER ;
 int LJ_TRERR_LLEAVE ;
 int LJ_TRERR_LUNROLL ;
 int LJ_TRLINK_LOOP ;
 scalar_t__ LOOPEV_ENTERLO ;
 scalar_t__ LOOPEV_LEAVE ;
 int bc_j (int const) ;
 int innerloopleft (TYPE_2__*,int const*) ;
 int lj_record_stop (TYPE_2__*,int ,int ) ;
 int lj_trace_err (TYPE_2__*,int ) ;

__attribute__((used)) static void rec_loop_interp(jit_State *J, const BCIns *pc, LoopEvent ev)
{
  if (J->parent == 0 && J->exitno == 0) {
    if (pc == J->startpc && J->framedepth + J->retdepth == 0) {

      if (ev == LOOPEV_LEAVE)
 lj_trace_err(J, LJ_TRERR_LLEAVE);
      lj_record_stop(J, LJ_TRLINK_LOOP, J->cur.traceno);
    } else if (ev != LOOPEV_LEAVE) {






      if (bc_j(*pc) != -1 && !innerloopleft(J, pc))
 lj_trace_err(J, LJ_TRERR_LINNER);
      if ((ev != LOOPEV_ENTERLO &&
    J->loopref && J->cur.nins - J->loopref > 24) || --J->loopunroll < 0)
 lj_trace_err(J, LJ_TRERR_LUNROLL);
      J->loopref = J->cur.nins;
    }
  } else if (ev != LOOPEV_LEAVE) {
    J->loopref = J->cur.nins;
    if (--J->loopunroll < 0)
      lj_trace_err(J, LJ_TRERR_LUNROLL);
  }
}
