
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int traceno; } ;
struct TYPE_11__ {scalar_t__ framedepth; scalar_t__ retdepth; TYPE_1__ cur; int * startpc; int * pc; scalar_t__ instunroll; int * patchpc; int patchins; } ;
typedef TYPE_2__ jit_State ;
typedef int TraceNo ;
struct TYPE_12__ {scalar_t__ linktype; int startins; } ;
typedef TYPE_3__ GCtrace ;
typedef int BCIns ;


 scalar_t__ LJ_TRLINK_RETURN ;
 int LJ_TRLINK_ROOT ;
 int LJ_TRLINK_TAILREC ;
 int check_call_unroll (TYPE_2__*,int ) ;
 int lj_record_stop (TYPE_2__*,int ,int ) ;
 int rec_func_setup (TYPE_2__*) ;
 TYPE_3__* traceref (TYPE_2__*,int ) ;

__attribute__((used)) static void rec_func_jit(jit_State *J, TraceNo lnk)
{
  GCtrace *T;
  rec_func_setup(J);
  T = traceref(J, lnk);
  if (T->linktype == LJ_TRLINK_RETURN) {
    check_call_unroll(J, lnk);

    J->patchins = *J->pc;
    J->patchpc = (BCIns *)J->pc;
    *J->patchpc = T->startins;
    return;
  }
  J->instunroll = 0;
  if (J->pc == J->startpc && J->framedepth + J->retdepth == 0)
    lj_record_stop(J, LJ_TRLINK_TAILREC, J->cur.traceno);
  else
    lj_record_stop(J, LJ_TRLINK_ROOT, lnk);
}
