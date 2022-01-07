
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t exitno; scalar_t__* param; scalar_t__ state; int L; int parent; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_12__ {int hookmask; } ;
struct TYPE_11__ {TYPE_2__* snap; } ;
struct TYPE_10__ {scalar_t__ count; } ;
typedef TYPE_2__ SnapShot ;
typedef int BCIns ;


 int HOOK_GC ;
 int HOOK_VMEVENT ;
 TYPE_7__* J2G (TYPE_1__*) ;
 size_t JIT_P_hotexit ;
 scalar_t__ LJ_TRACE_IDLE ;
 scalar_t__ LJ_TRACE_START ;
 scalar_t__ SNAPCOUNT_DONE ;
 int curr_func (int ) ;
 scalar_t__ isluafunc (int ) ;
 int lj_trace_ins (TYPE_1__*,int const*) ;
 int lua_assert (int) ;
 TYPE_3__* traceref (TYPE_1__*,int ) ;

__attribute__((used)) static void trace_hotside(jit_State *J, const BCIns *pc)
{
  SnapShot *snap = &traceref(J, J->parent)->snap[J->exitno];
  if (!(J2G(J)->hookmask & (HOOK_GC|HOOK_VMEVENT)) &&
      isluafunc(curr_func(J->L)) &&
      snap->count != SNAPCOUNT_DONE &&
      ++snap->count >= J->param[JIT_P_hotexit]) {
    lua_assert(J->state == LJ_TRACE_IDLE);

    J->state = LJ_TRACE_START;
    lj_trace_ins(J, pc);
  }
}
