
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int traceno; } ;
struct TYPE_7__ {scalar_t__ parent; scalar_t__ exitno; scalar_t__ pc; scalar_t__ startpc; scalar_t__ framedepth; scalar_t__ retdepth; TYPE_1__ cur; scalar_t__ instunroll; } ;
typedef TYPE_2__ jit_State ;
typedef int TraceNo ;
typedef scalar_t__ LoopEvent ;


 int LJ_TRERR_LINNER ;
 int LJ_TRLINK_LOOP ;
 int LJ_TRLINK_ROOT ;
 scalar_t__ LOOPEV_LEAVE ;
 int lj_record_stop (TYPE_2__*,int ,int ) ;
 int lj_trace_err (TYPE_2__*,int ) ;

__attribute__((used)) static void rec_loop_jit(jit_State *J, TraceNo lnk, LoopEvent ev)
{
  if (J->parent == 0 && J->exitno == 0) {

    lj_trace_err(J, LJ_TRERR_LINNER);
  } else if (ev != LOOPEV_LEAVE) {
    J->instunroll = 0;
    if (J->pc == J->startpc && J->framedepth + J->retdepth == 0)
      lj_record_stop(J, LJ_TRLINK_LOOP, J->cur.traceno);
    else
      lj_record_stop(J, LJ_TRLINK_ROOT, lnk);
  }
}
