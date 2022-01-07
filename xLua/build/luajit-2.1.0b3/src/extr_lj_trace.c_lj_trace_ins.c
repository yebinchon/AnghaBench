
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int L; int fn; int * pt; int const* pc; } ;
typedef TYPE_1__ jit_State ;
typedef int BCIns ;


 int LJ_TRACE_ERR ;
 int curr_func (int ) ;
 int * funcproto (int ) ;
 scalar_t__ isluafunc (int ) ;
 scalar_t__ lj_vm_cpcall (int ,int *,void*,int ) ;
 int trace_state ;

void lj_trace_ins(jit_State *J, const BCIns *pc)
{

  J->pc = pc;
  J->fn = curr_func(J->L);
  J->pt = isluafunc(J->fn) ? funcproto(J->fn) : ((void*)0);
  while (lj_vm_cpcall(J->L, ((void*)0), (void *)J, trace_state) != 0)
    J->state = LJ_TRACE_ERR;
}
